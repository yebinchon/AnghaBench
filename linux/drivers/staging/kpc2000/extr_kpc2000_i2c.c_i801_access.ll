; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/kpc2000/extr_kpc2000_i2c.c_i801_access.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/kpc2000/extr_kpc2000_i2c.c_i801_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%union.i2c_smbus_data = type { i32 }
%struct.i2c_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@FEATURE_SMBUS_PEC = common dso_local global i32 0, align 4
@I2C_CLIENT_PEC = common dso_local global i16 0, align 2
@.str = private unnamed_addr constant [21 x i8] c"  [acc] SMBUS_QUICK\0A\00", align 1
@I801_QUICK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"  [acc] SMBUS_BYTE\0A\00", align 1
@I2C_SMBUS_WRITE = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"  [acc] SMBUS_BYTE_DATA\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"  [acc] SMBUS_WORD_DATA\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"  [acc] SMBUS_BLOCK_DATA\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"  [acc] SMBUS_I2C_BLOCK_DATA\0A\00", align 1
@I2C_SMBUS_READ = common dso_local global i8 0, align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"  [acc] Unsupported transaction %d\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"  [acc] hwpec: yes\0A\00", align 1
@SMBAUXCTL_CRC = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [19 x i8] c"  [acc] hwpec: no\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"  [acc] block: yes\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"  [acc] block: no\0A\00", align 1
@ENABLE_INT9 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [24 x i8] c"  [acc] hwpec || block\0A\00", align 1
@SMBAUXCTL_E32B = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [15 x i8] c"  [acc] block\0A\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"  [acc] ret %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [49 x i8] c"  [acc] I2C_SMBUS_WRITE || I801_QUICK  -> ret 0\0A\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"  [acc] I801_BYTE or I801_BYTE_DATA\0A\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"  [acc] I801_WORD_DATA\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, i32, i16, i8, i32, i32, %union.i2c_smbus_data*)* @i801_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i801_access(%struct.i2c_adapter* %0, i32 %1, i16 zeroext %2, i8 signext %3, i32 %4, i32 %5, %union.i2c_smbus_data* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.i2c_adapter*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %union.i2c_smbus_data*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.i2c_device*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %9, align 8
  store i32 %1, i32* %10, align 4
  store i16 %2, i16* %11, align 2
  store i8 %3, i8* %12, align 1
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %union.i2c_smbus_data* %6, %union.i2c_smbus_data** %15, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %19, align 4
  %21 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %22 = call %struct.i2c_device* @i2c_get_adapdata(%struct.i2c_adapter* %21)
  store %struct.i2c_device* %22, %struct.i2c_device** %20, align 8
  %23 = load %struct.i2c_device*, %struct.i2c_device** %20, align 8
  %24 = getelementptr inbounds %struct.i2c_device, %struct.i2c_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @FEATURE_SMBUS_PEC, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %7
  %30 = load i16, i16* %11, align 2
  %31 = zext i16 %30 to i32
  %32 = load i16, i16* @I2C_CLIENT_PEC, align 2
  %33 = zext i16 %32 to i32
  %34 = and i32 %31, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %29
  %37 = load i32, i32* %14, align 4
  %38 = icmp ne i32 %37, 132
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* %14, align 4
  %41 = icmp ne i32 %40, 133
  br label %42

42:                                               ; preds = %39, %36, %29, %7
  %43 = phi i1 [ false, %36 ], [ false, %29 ], [ false, %7 ], [ %41, %39 ]
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %16, align 4
  %45 = load i32, i32* %14, align 4
  switch i32 %45, label %207 [
    i32 132, label %46
    i32 135, label %62
    i32 134, label %88
    i32 131, label %120
    i32 136, label %161
    i32 133, label %180
  ]

46:                                               ; preds = %42
  %47 = load %struct.i2c_device*, %struct.i2c_device** %20, align 8
  %48 = getelementptr inbounds %struct.i2c_device, %struct.i2c_device* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %49, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* %10, align 4
  %52 = and i32 %51, 127
  %53 = shl i32 %52, 1
  %54 = load i8, i8* %12, align 1
  %55 = sext i8 %54 to i32
  %56 = and i32 %55, 1
  %57 = or i32 %53, %56
  %58 = load %struct.i2c_device*, %struct.i2c_device** %20, align 8
  %59 = call i32 @SMBHSTADD(%struct.i2c_device* %58)
  %60 = call i32 @outb_p(i32 %57, i32 %59)
  %61 = load i32, i32* @I801_QUICK, align 4
  store i32 %61, i32* %19, align 4
  br label %215

62:                                               ; preds = %42
  %63 = load %struct.i2c_device*, %struct.i2c_device** %20, align 8
  %64 = getelementptr inbounds %struct.i2c_device, %struct.i2c_device* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %65, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %67 = load i32, i32* %10, align 4
  %68 = and i32 %67, 127
  %69 = shl i32 %68, 1
  %70 = load i8, i8* %12, align 1
  %71 = sext i8 %70 to i32
  %72 = and i32 %71, 1
  %73 = or i32 %69, %72
  %74 = load %struct.i2c_device*, %struct.i2c_device** %20, align 8
  %75 = call i32 @SMBHSTADD(%struct.i2c_device* %74)
  %76 = call i32 @outb_p(i32 %73, i32 %75)
  %77 = load i8, i8* %12, align 1
  %78 = sext i8 %77 to i32
  %79 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %78, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %62
  %83 = load i32, i32* %13, align 4
  %84 = load %struct.i2c_device*, %struct.i2c_device** %20, align 8
  %85 = call i32 @SMBHSTCMD(%struct.i2c_device* %84)
  %86 = call i32 @outb_p(i32 %83, i32 %85)
  br label %87

87:                                               ; preds = %82, %62
  store i32 130, i32* %19, align 4
  br label %215

88:                                               ; preds = %42
  %89 = load %struct.i2c_device*, %struct.i2c_device** %20, align 8
  %90 = getelementptr inbounds %struct.i2c_device, %struct.i2c_device* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %91, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %93 = load i32, i32* %10, align 4
  %94 = and i32 %93, 127
  %95 = shl i32 %94, 1
  %96 = load i8, i8* %12, align 1
  %97 = sext i8 %96 to i32
  %98 = and i32 %97, 1
  %99 = or i32 %95, %98
  %100 = load %struct.i2c_device*, %struct.i2c_device** %20, align 8
  %101 = call i32 @SMBHSTADD(%struct.i2c_device* %100)
  %102 = call i32 @outb_p(i32 %99, i32 %101)
  %103 = load i32, i32* %13, align 4
  %104 = load %struct.i2c_device*, %struct.i2c_device** %20, align 8
  %105 = call i32 @SMBHSTCMD(%struct.i2c_device* %104)
  %106 = call i32 @outb_p(i32 %103, i32 %105)
  %107 = load i8, i8* %12, align 1
  %108 = sext i8 %107 to i32
  %109 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 %108, %110
  br i1 %111, label %112, label %119

112:                                              ; preds = %88
  %113 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %114 = bitcast %union.i2c_smbus_data* %113 to i32*
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.i2c_device*, %struct.i2c_device** %20, align 8
  %117 = call i32 @SMBHSTDAT0(%struct.i2c_device* %116)
  %118 = call i32 @outb_p(i32 %115, i32 %117)
  br label %119

119:                                              ; preds = %112, %88
  store i32 129, i32* %19, align 4
  br label %215

120:                                              ; preds = %42
  %121 = load %struct.i2c_device*, %struct.i2c_device** %20, align 8
  %122 = getelementptr inbounds %struct.i2c_device, %struct.i2c_device* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %123, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %125 = load i32, i32* %10, align 4
  %126 = and i32 %125, 127
  %127 = shl i32 %126, 1
  %128 = load i8, i8* %12, align 1
  %129 = sext i8 %128 to i32
  %130 = and i32 %129, 1
  %131 = or i32 %127, %130
  %132 = load %struct.i2c_device*, %struct.i2c_device** %20, align 8
  %133 = call i32 @SMBHSTADD(%struct.i2c_device* %132)
  %134 = call i32 @outb_p(i32 %131, i32 %133)
  %135 = load i32, i32* %13, align 4
  %136 = load %struct.i2c_device*, %struct.i2c_device** %20, align 8
  %137 = call i32 @SMBHSTCMD(%struct.i2c_device* %136)
  %138 = call i32 @outb_p(i32 %135, i32 %137)
  %139 = load i8, i8* %12, align 1
  %140 = sext i8 %139 to i32
  %141 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %142 = sext i8 %141 to i32
  %143 = icmp eq i32 %140, %142
  br i1 %143, label %144, label %160

144:                                              ; preds = %120
  %145 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %146 = bitcast %union.i2c_smbus_data* %145 to i32*
  %147 = load i32, i32* %146, align 4
  %148 = and i32 %147, 255
  %149 = load %struct.i2c_device*, %struct.i2c_device** %20, align 8
  %150 = call i32 @SMBHSTDAT0(%struct.i2c_device* %149)
  %151 = call i32 @outb_p(i32 %148, i32 %150)
  %152 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %153 = bitcast %union.i2c_smbus_data* %152 to i32*
  %154 = load i32, i32* %153, align 4
  %155 = and i32 %154, 65280
  %156 = ashr i32 %155, 8
  %157 = load %struct.i2c_device*, %struct.i2c_device** %20, align 8
  %158 = call i32 @SMBHSTDAT1(%struct.i2c_device* %157)
  %159 = call i32 @outb_p(i32 %156, i32 %158)
  br label %160

160:                                              ; preds = %144, %120
  store i32 128, i32* %19, align 4
  br label %215

161:                                              ; preds = %42
  %162 = load %struct.i2c_device*, %struct.i2c_device** %20, align 8
  %163 = getelementptr inbounds %struct.i2c_device, %struct.i2c_device* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 0
  %165 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %164, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %166 = load i32, i32* %10, align 4
  %167 = and i32 %166, 127
  %168 = shl i32 %167, 1
  %169 = load i8, i8* %12, align 1
  %170 = sext i8 %169 to i32
  %171 = and i32 %170, 1
  %172 = or i32 %168, %171
  %173 = load %struct.i2c_device*, %struct.i2c_device** %20, align 8
  %174 = call i32 @SMBHSTADD(%struct.i2c_device* %173)
  %175 = call i32 @outb_p(i32 %172, i32 %174)
  %176 = load i32, i32* %13, align 4
  %177 = load %struct.i2c_device*, %struct.i2c_device** %20, align 8
  %178 = call i32 @SMBHSTCMD(%struct.i2c_device* %177)
  %179 = call i32 @outb_p(i32 %176, i32 %178)
  store i32 1, i32* %17, align 4
  br label %215

180:                                              ; preds = %42
  %181 = load %struct.i2c_device*, %struct.i2c_device** %20, align 8
  %182 = getelementptr inbounds %struct.i2c_device, %struct.i2c_device* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 0
  %184 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %183, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %185 = load i32, i32* %10, align 4
  %186 = and i32 %185, 127
  %187 = shl i32 %186, 1
  %188 = load %struct.i2c_device*, %struct.i2c_device** %20, align 8
  %189 = call i32 @SMBHSTADD(%struct.i2c_device* %188)
  %190 = call i32 @outb_p(i32 %187, i32 %189)
  %191 = load i8, i8* %12, align 1
  %192 = sext i8 %191 to i32
  %193 = load i8, i8* @I2C_SMBUS_READ, align 1
  %194 = sext i8 %193 to i32
  %195 = icmp eq i32 %192, %194
  br i1 %195, label %196, label %201

196:                                              ; preds = %180
  %197 = load i32, i32* %13, align 4
  %198 = load %struct.i2c_device*, %struct.i2c_device** %20, align 8
  %199 = call i32 @SMBHSTDAT1(%struct.i2c_device* %198)
  %200 = call i32 @outb_p(i32 %197, i32 %199)
  br label %206

201:                                              ; preds = %180
  %202 = load i32, i32* %13, align 4
  %203 = load %struct.i2c_device*, %struct.i2c_device** %20, align 8
  %204 = call i32 @SMBHSTCMD(%struct.i2c_device* %203)
  %205 = call i32 @outb_p(i32 %202, i32 %204)
  br label %206

206:                                              ; preds = %201, %196
  store i32 1, i32* %17, align 4
  br label %215

207:                                              ; preds = %42
  %208 = load %struct.i2c_device*, %struct.i2c_device** %20, align 8
  %209 = getelementptr inbounds %struct.i2c_device, %struct.i2c_device* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %209, i32 0, i32 0
  %211 = load i32, i32* %14, align 4
  %212 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %210, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %211)
  %213 = load i32, i32* @EOPNOTSUPP, align 4
  %214 = sub nsw i32 0, %213
  store i32 %214, i32* %8, align 4
  br label %354

215:                                              ; preds = %206, %161, %160, %119, %87, %46
  %216 = load i32, i32* %16, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %231

218:                                              ; preds = %215
  %219 = load %struct.i2c_device*, %struct.i2c_device** %20, align 8
  %220 = getelementptr inbounds %struct.i2c_device, %struct.i2c_device* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %220, i32 0, i32 0
  %222 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %221, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %223 = load %struct.i2c_device*, %struct.i2c_device** %20, align 8
  %224 = call i32 @SMBAUXCTL(%struct.i2c_device* %223)
  %225 = call i32 @inb_p(i32 %224)
  %226 = load i32, i32* @SMBAUXCTL_CRC, align 4
  %227 = or i32 %225, %226
  %228 = load %struct.i2c_device*, %struct.i2c_device** %20, align 8
  %229 = call i32 @SMBAUXCTL(%struct.i2c_device* %228)
  %230 = call i32 @outb_p(i32 %227, i32 %229)
  br label %245

231:                                              ; preds = %215
  %232 = load %struct.i2c_device*, %struct.i2c_device** %20, align 8
  %233 = getelementptr inbounds %struct.i2c_device, %struct.i2c_device* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %233, i32 0, i32 0
  %235 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %234, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  %236 = load %struct.i2c_device*, %struct.i2c_device** %20, align 8
  %237 = call i32 @SMBAUXCTL(%struct.i2c_device* %236)
  %238 = call i32 @inb_p(i32 %237)
  %239 = load i32, i32* @SMBAUXCTL_CRC, align 4
  %240 = xor i32 %239, -1
  %241 = and i32 %238, %240
  %242 = load %struct.i2c_device*, %struct.i2c_device** %20, align 8
  %243 = call i32 @SMBAUXCTL(%struct.i2c_device* %242)
  %244 = call i32 @outb_p(i32 %241, i32 %243)
  br label %245

245:                                              ; preds = %231, %218
  %246 = load i32, i32* %17, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %259

248:                                              ; preds = %245
  %249 = load %struct.i2c_device*, %struct.i2c_device** %20, align 8
  %250 = getelementptr inbounds %struct.i2c_device, %struct.i2c_device* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %250, i32 0, i32 0
  %252 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %251, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  %253 = load %struct.i2c_device*, %struct.i2c_device** %20, align 8
  %254 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %255 = load i8, i8* %12, align 1
  %256 = load i32, i32* %14, align 4
  %257 = load i32, i32* %16, align 4
  %258 = call i32 @i801_block_transaction(%struct.i2c_device* %253, %union.i2c_smbus_data* %254, i8 signext %255, i32 %256, i32 %257)
  store i32 %258, i32* %18, align 4
  br label %269

259:                                              ; preds = %245
  %260 = load %struct.i2c_device*, %struct.i2c_device** %20, align 8
  %261 = getelementptr inbounds %struct.i2c_device, %struct.i2c_device* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %261, i32 0, i32 0
  %263 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %262, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0))
  %264 = load %struct.i2c_device*, %struct.i2c_device** %20, align 8
  %265 = load i32, i32* %19, align 4
  %266 = load i32, i32* @ENABLE_INT9, align 4
  %267 = or i32 %265, %266
  %268 = call i32 @i801_transaction(%struct.i2c_device* %264, i32 %267)
  store i32 %268, i32* %18, align 4
  br label %269

269:                                              ; preds = %259, %248
  %270 = load i32, i32* %16, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %275, label %272

272:                                              ; preds = %269
  %273 = load i32, i32* %17, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %291

275:                                              ; preds = %272, %269
  %276 = load %struct.i2c_device*, %struct.i2c_device** %20, align 8
  %277 = getelementptr inbounds %struct.i2c_device, %struct.i2c_device* %276, i32 0, i32 1
  %278 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %277, i32 0, i32 0
  %279 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %278, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0))
  %280 = load %struct.i2c_device*, %struct.i2c_device** %20, align 8
  %281 = call i32 @SMBAUXCTL(%struct.i2c_device* %280)
  %282 = call i32 @inb_p(i32 %281)
  %283 = load i32, i32* @SMBAUXCTL_CRC, align 4
  %284 = load i32, i32* @SMBAUXCTL_E32B, align 4
  %285 = or i32 %283, %284
  %286 = xor i32 %285, -1
  %287 = and i32 %282, %286
  %288 = load %struct.i2c_device*, %struct.i2c_device** %20, align 8
  %289 = call i32 @SMBAUXCTL(%struct.i2c_device* %288)
  %290 = call i32 @outb_p(i32 %287, i32 %289)
  br label %291

291:                                              ; preds = %275, %272
  %292 = load i32, i32* %17, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %300

294:                                              ; preds = %291
  %295 = load %struct.i2c_device*, %struct.i2c_device** %20, align 8
  %296 = getelementptr inbounds %struct.i2c_device, %struct.i2c_device* %295, i32 0, i32 1
  %297 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %296, i32 0, i32 0
  %298 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %297, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  %299 = load i32, i32* %18, align 4
  store i32 %299, i32* %8, align 4
  br label %354

300:                                              ; preds = %291
  %301 = load i32, i32* %18, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %310

303:                                              ; preds = %300
  %304 = load %struct.i2c_device*, %struct.i2c_device** %20, align 8
  %305 = getelementptr inbounds %struct.i2c_device, %struct.i2c_device* %304, i32 0, i32 1
  %306 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %305, i32 0, i32 0
  %307 = load i32, i32* %18, align 4
  %308 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %306, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i32 %307)
  %309 = load i32, i32* %18, align 4
  store i32 %309, i32* %8, align 4
  br label %354

310:                                              ; preds = %300
  %311 = load i8, i8* %12, align 1
  %312 = sext i8 %311 to i32
  %313 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %314 = sext i8 %313 to i32
  %315 = icmp eq i32 %312, %314
  br i1 %315, label %320, label %316

316:                                              ; preds = %310
  %317 = load i32, i32* %19, align 4
  %318 = load i32, i32* @I801_QUICK, align 4
  %319 = icmp eq i32 %317, %318
  br i1 %319, label %320, label %325

320:                                              ; preds = %316, %310
  %321 = load %struct.i2c_device*, %struct.i2c_device** %20, align 8
  %322 = getelementptr inbounds %struct.i2c_device, %struct.i2c_device* %321, i32 0, i32 1
  %323 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %322, i32 0, i32 0
  %324 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %323, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.14, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %354

325:                                              ; preds = %316
  %326 = load i32, i32* %19, align 4
  %327 = and i32 %326, 127
  switch i32 %327, label %353 [
    i32 130, label %328
    i32 129, label %328
    i32 128, label %338
  ]

328:                                              ; preds = %325, %325
  %329 = load %struct.i2c_device*, %struct.i2c_device** %20, align 8
  %330 = getelementptr inbounds %struct.i2c_device, %struct.i2c_device* %329, i32 0, i32 1
  %331 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %330, i32 0, i32 0
  %332 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %331, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i64 0, i64 0))
  %333 = load %struct.i2c_device*, %struct.i2c_device** %20, align 8
  %334 = call i32 @SMBHSTDAT0(%struct.i2c_device* %333)
  %335 = call i32 @inb_p(i32 %334)
  %336 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %337 = bitcast %union.i2c_smbus_data* %336 to i32*
  store i32 %335, i32* %337, align 4
  br label %353

338:                                              ; preds = %325
  %339 = load %struct.i2c_device*, %struct.i2c_device** %20, align 8
  %340 = getelementptr inbounds %struct.i2c_device, %struct.i2c_device* %339, i32 0, i32 1
  %341 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %340, i32 0, i32 0
  %342 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %341, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0))
  %343 = load %struct.i2c_device*, %struct.i2c_device** %20, align 8
  %344 = call i32 @SMBHSTDAT0(%struct.i2c_device* %343)
  %345 = call i32 @inb_p(i32 %344)
  %346 = load %struct.i2c_device*, %struct.i2c_device** %20, align 8
  %347 = call i32 @SMBHSTDAT1(%struct.i2c_device* %346)
  %348 = call i32 @inb_p(i32 %347)
  %349 = shl i32 %348, 8
  %350 = add nsw i32 %345, %349
  %351 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %352 = bitcast %union.i2c_smbus_data* %351 to i32*
  store i32 %350, i32* %352, align 4
  br label %353

353:                                              ; preds = %325, %338, %328
  store i32 0, i32* %8, align 4
  br label %354

354:                                              ; preds = %353, %320, %303, %294, %207
  %355 = load i32, i32* %8, align 4
  ret i32 %355
}

declare dso_local %struct.i2c_device* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @outb_p(i32, i32) #1

declare dso_local i32 @SMBHSTADD(%struct.i2c_device*) #1

declare dso_local i32 @SMBHSTCMD(%struct.i2c_device*) #1

declare dso_local i32 @SMBHSTDAT0(%struct.i2c_device*) #1

declare dso_local i32 @SMBHSTDAT1(%struct.i2c_device*) #1

declare dso_local i32 @inb_p(i32) #1

declare dso_local i32 @SMBAUXCTL(%struct.i2c_device*) #1

declare dso_local i32 @i801_block_transaction(%struct.i2c_device*, %union.i2c_smbus_data*, i8 signext, i32, i32) #1

declare dso_local i32 @i801_transaction(%struct.i2c_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
