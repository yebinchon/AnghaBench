; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_fw-core.c_gb_fw_core_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_fw-core.c_gb_fw_core_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_bundle = type { i32, %struct.TYPE_2__*, i32, %struct.greybus_descriptor_cport* }
%struct.TYPE_2__ = type { i32 }
%struct.greybus_descriptor_cport = type { i32, i32 }
%struct.greybus_bundle_id = type { i32 }
%struct.gb_connection = type { i32 }
%struct.gb_fw_core = type { %struct.gb_connection*, %struct.gb_connection*, %struct.gb_connection*, %struct.gb_connection* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"multiple management CPorts found\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@gb_fw_mgmt_request_handler = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"failed to create management connection (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"multiple download CPorts found\0A\00", align 1
@gb_fw_download_request_handler = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [44 x i8] c"failed to create download connection (%ld)\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"multiple SPI CPorts found\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"failed to create SPI connection (%ld)\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"multiple Authentication CPorts found\0A\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"failed to create Authentication connection (%ld)\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"invalid protocol id (0x%02x)\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"missing management connection\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [68 x i8] c"failed to initialize firmware download connection, disable it (%d)\0A\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"failed to initialize SPI connection, disable it (%d)\0A\00", align 1
@.str.12 = private unnamed_addr constant [54 x i8] c"failed to initialize CAP connection, disable it (%d)\0A\00", align 1
@.str.13 = private unnamed_addr constant [70 x i8] c"failed to initialize firmware management connection, disable it (%d)\0A\00", align 1
@GB_INTERFACE_QUIRK_NO_PM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_bundle*, %struct.greybus_bundle_id*)* @gb_fw_core_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_fw_core_probe(%struct.gb_bundle* %0, %struct.greybus_bundle_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gb_bundle*, align 8
  %5 = alloca %struct.greybus_bundle_id*, align 8
  %6 = alloca %struct.greybus_descriptor_cport*, align 8
  %7 = alloca %struct.gb_connection*, align 8
  %8 = alloca %struct.gb_fw_core*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.gb_bundle* %0, %struct.gb_bundle** %4, align 8
  store %struct.greybus_bundle_id* %1, %struct.greybus_bundle_id** %5, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.gb_fw_core* @kzalloc(i32 32, i32 %13)
  store %struct.gb_fw_core* %14, %struct.gb_fw_core** %8, align 8
  %15 = load %struct.gb_fw_core*, %struct.gb_fw_core** %8, align 8
  %16 = icmp ne %struct.gb_fw_core* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %297

20:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %168, %20
  %22 = load i32, i32* %10, align 4
  %23 = load %struct.gb_bundle*, %struct.gb_bundle** %4, align 8
  %24 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %171

27:                                               ; preds = %21
  %28 = load %struct.gb_bundle*, %struct.gb_bundle** %4, align 8
  %29 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %28, i32 0, i32 3
  %30 = load %struct.greybus_descriptor_cport*, %struct.greybus_descriptor_cport** %29, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.greybus_descriptor_cport, %struct.greybus_descriptor_cport* %30, i64 %32
  store %struct.greybus_descriptor_cport* %33, %struct.greybus_descriptor_cport** %6, align 8
  %34 = load %struct.greybus_descriptor_cport*, %struct.greybus_descriptor_cport** %6, align 8
  %35 = getelementptr inbounds %struct.greybus_descriptor_cport, %struct.greybus_descriptor_cport* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @le16_to_cpu(i32 %36)
  store i32 %37, i32* %11, align 4
  %38 = load %struct.greybus_descriptor_cport*, %struct.greybus_descriptor_cport** %6, align 8
  %39 = getelementptr inbounds %struct.greybus_descriptor_cport, %struct.greybus_descriptor_cport* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  switch i32 %41, label %160 [
    i32 129, label %42
    i32 130, label %72
    i32 128, label %102
    i32 131, label %131
  ]

42:                                               ; preds = %27
  %43 = load %struct.gb_fw_core*, %struct.gb_fw_core** %8, align 8
  %44 = getelementptr inbounds %struct.gb_fw_core, %struct.gb_fw_core* %43, i32 0, i32 3
  %45 = load %struct.gb_connection*, %struct.gb_connection** %44, align 8
  %46 = icmp ne %struct.gb_connection* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load %struct.gb_bundle*, %struct.gb_bundle** %4, align 8
  %49 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %48, i32 0, i32 2
  %50 = call i32 (i32*, i8*, ...) @dev_err(i32* %49, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %9, align 4
  br label %277

53:                                               ; preds = %42
  %54 = load %struct.gb_bundle*, %struct.gb_bundle** %4, align 8
  %55 = load i32, i32* %11, align 4
  %56 = load i32*, i32** @gb_fw_mgmt_request_handler, align 8
  %57 = call %struct.gb_connection* @gb_connection_create(%struct.gb_bundle* %54, i32 %55, i32* %56)
  store %struct.gb_connection* %57, %struct.gb_connection** %7, align 8
  %58 = load %struct.gb_connection*, %struct.gb_connection** %7, align 8
  %59 = call i32 @IS_ERR(%struct.gb_connection* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %53
  %62 = load %struct.gb_connection*, %struct.gb_connection** %7, align 8
  %63 = call i32 @PTR_ERR(%struct.gb_connection* %62)
  store i32 %63, i32* %9, align 4
  %64 = load %struct.gb_bundle*, %struct.gb_bundle** %4, align 8
  %65 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %64, i32 0, i32 2
  %66 = load i32, i32* %9, align 4
  %67 = call i32 (i32*, i8*, ...) @dev_err(i32* %65, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  br label %277

68:                                               ; preds = %53
  %69 = load %struct.gb_connection*, %struct.gb_connection** %7, align 8
  %70 = load %struct.gb_fw_core*, %struct.gb_fw_core** %8, align 8
  %71 = getelementptr inbounds %struct.gb_fw_core, %struct.gb_fw_core* %70, i32 0, i32 3
  store %struct.gb_connection* %69, %struct.gb_connection** %71, align 8
  br label %167

72:                                               ; preds = %27
  %73 = load %struct.gb_fw_core*, %struct.gb_fw_core** %8, align 8
  %74 = getelementptr inbounds %struct.gb_fw_core, %struct.gb_fw_core* %73, i32 0, i32 0
  %75 = load %struct.gb_connection*, %struct.gb_connection** %74, align 8
  %76 = icmp ne %struct.gb_connection* %75, null
  br i1 %76, label %77, label %83

77:                                               ; preds = %72
  %78 = load %struct.gb_bundle*, %struct.gb_bundle** %4, align 8
  %79 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %78, i32 0, i32 2
  %80 = call i32 (i32*, i8*, ...) @dev_err(i32* %79, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %9, align 4
  br label %277

83:                                               ; preds = %72
  %84 = load %struct.gb_bundle*, %struct.gb_bundle** %4, align 8
  %85 = load i32, i32* %11, align 4
  %86 = load i32*, i32** @gb_fw_download_request_handler, align 8
  %87 = call %struct.gb_connection* @gb_connection_create(%struct.gb_bundle* %84, i32 %85, i32* %86)
  store %struct.gb_connection* %87, %struct.gb_connection** %7, align 8
  %88 = load %struct.gb_connection*, %struct.gb_connection** %7, align 8
  %89 = call i32 @IS_ERR(%struct.gb_connection* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %83
  %92 = load %struct.gb_bundle*, %struct.gb_bundle** %4, align 8
  %93 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %92, i32 0, i32 2
  %94 = load %struct.gb_connection*, %struct.gb_connection** %7, align 8
  %95 = call i32 @PTR_ERR(%struct.gb_connection* %94)
  %96 = call i32 (i32*, i8*, ...) @dev_err(i32* %93, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %95)
  br label %101

97:                                               ; preds = %83
  %98 = load %struct.gb_connection*, %struct.gb_connection** %7, align 8
  %99 = load %struct.gb_fw_core*, %struct.gb_fw_core** %8, align 8
  %100 = getelementptr inbounds %struct.gb_fw_core, %struct.gb_fw_core* %99, i32 0, i32 0
  store %struct.gb_connection* %98, %struct.gb_connection** %100, align 8
  br label %101

101:                                              ; preds = %97, %91
  br label %167

102:                                              ; preds = %27
  %103 = load %struct.gb_fw_core*, %struct.gb_fw_core** %8, align 8
  %104 = getelementptr inbounds %struct.gb_fw_core, %struct.gb_fw_core* %103, i32 0, i32 1
  %105 = load %struct.gb_connection*, %struct.gb_connection** %104, align 8
  %106 = icmp ne %struct.gb_connection* %105, null
  br i1 %106, label %107, label %113

107:                                              ; preds = %102
  %108 = load %struct.gb_bundle*, %struct.gb_bundle** %4, align 8
  %109 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %108, i32 0, i32 2
  %110 = call i32 (i32*, i8*, ...) @dev_err(i32* %109, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %9, align 4
  br label %277

113:                                              ; preds = %102
  %114 = load %struct.gb_bundle*, %struct.gb_bundle** %4, align 8
  %115 = load i32, i32* %11, align 4
  %116 = call %struct.gb_connection* @gb_connection_create(%struct.gb_bundle* %114, i32 %115, i32* null)
  store %struct.gb_connection* %116, %struct.gb_connection** %7, align 8
  %117 = load %struct.gb_connection*, %struct.gb_connection** %7, align 8
  %118 = call i32 @IS_ERR(%struct.gb_connection* %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %113
  %121 = load %struct.gb_bundle*, %struct.gb_bundle** %4, align 8
  %122 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %121, i32 0, i32 2
  %123 = load %struct.gb_connection*, %struct.gb_connection** %7, align 8
  %124 = call i32 @PTR_ERR(%struct.gb_connection* %123)
  %125 = call i32 (i32*, i8*, ...) @dev_err(i32* %122, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %124)
  br label %130

126:                                              ; preds = %113
  %127 = load %struct.gb_connection*, %struct.gb_connection** %7, align 8
  %128 = load %struct.gb_fw_core*, %struct.gb_fw_core** %8, align 8
  %129 = getelementptr inbounds %struct.gb_fw_core, %struct.gb_fw_core* %128, i32 0, i32 1
  store %struct.gb_connection* %127, %struct.gb_connection** %129, align 8
  br label %130

130:                                              ; preds = %126, %120
  br label %167

131:                                              ; preds = %27
  %132 = load %struct.gb_fw_core*, %struct.gb_fw_core** %8, align 8
  %133 = getelementptr inbounds %struct.gb_fw_core, %struct.gb_fw_core* %132, i32 0, i32 2
  %134 = load %struct.gb_connection*, %struct.gb_connection** %133, align 8
  %135 = icmp ne %struct.gb_connection* %134, null
  br i1 %135, label %136, label %142

136:                                              ; preds = %131
  %137 = load %struct.gb_bundle*, %struct.gb_bundle** %4, align 8
  %138 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %137, i32 0, i32 2
  %139 = call i32 (i32*, i8*, ...) @dev_err(i32* %138, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  %140 = load i32, i32* @EINVAL, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %9, align 4
  br label %277

142:                                              ; preds = %131
  %143 = load %struct.gb_bundle*, %struct.gb_bundle** %4, align 8
  %144 = load i32, i32* %11, align 4
  %145 = call %struct.gb_connection* @gb_connection_create(%struct.gb_bundle* %143, i32 %144, i32* null)
  store %struct.gb_connection* %145, %struct.gb_connection** %7, align 8
  %146 = load %struct.gb_connection*, %struct.gb_connection** %7, align 8
  %147 = call i32 @IS_ERR(%struct.gb_connection* %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %142
  %150 = load %struct.gb_bundle*, %struct.gb_bundle** %4, align 8
  %151 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %150, i32 0, i32 2
  %152 = load %struct.gb_connection*, %struct.gb_connection** %7, align 8
  %153 = call i32 @PTR_ERR(%struct.gb_connection* %152)
  %154 = call i32 (i32*, i8*, ...) @dev_err(i32* %151, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0), i32 %153)
  br label %159

155:                                              ; preds = %142
  %156 = load %struct.gb_connection*, %struct.gb_connection** %7, align 8
  %157 = load %struct.gb_fw_core*, %struct.gb_fw_core** %8, align 8
  %158 = getelementptr inbounds %struct.gb_fw_core, %struct.gb_fw_core* %157, i32 0, i32 2
  store %struct.gb_connection* %156, %struct.gb_connection** %158, align 8
  br label %159

159:                                              ; preds = %155, %149
  br label %167

160:                                              ; preds = %27
  %161 = load %struct.gb_bundle*, %struct.gb_bundle** %4, align 8
  %162 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %161, i32 0, i32 2
  %163 = load i32, i32* %12, align 4
  %164 = call i32 (i32*, i8*, ...) @dev_err(i32* %162, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %163)
  %165 = load i32, i32* @EINVAL, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %9, align 4
  br label %277

167:                                              ; preds = %159, %130, %101, %68
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %10, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %10, align 4
  br label %21

171:                                              ; preds = %21
  %172 = load %struct.gb_fw_core*, %struct.gb_fw_core** %8, align 8
  %173 = getelementptr inbounds %struct.gb_fw_core, %struct.gb_fw_core* %172, i32 0, i32 3
  %174 = load %struct.gb_connection*, %struct.gb_connection** %173, align 8
  %175 = icmp ne %struct.gb_connection* %174, null
  br i1 %175, label %182, label %176

176:                                              ; preds = %171
  %177 = load %struct.gb_bundle*, %struct.gb_bundle** %4, align 8
  %178 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %177, i32 0, i32 2
  %179 = call i32 (i32*, i8*, ...) @dev_err(i32* %178, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0))
  %180 = load i32, i32* @ENODEV, align 4
  %181 = sub nsw i32 0, %180
  store i32 %181, i32* %9, align 4
  br label %277

182:                                              ; preds = %171
  %183 = load %struct.gb_fw_core*, %struct.gb_fw_core** %8, align 8
  %184 = getelementptr inbounds %struct.gb_fw_core, %struct.gb_fw_core* %183, i32 0, i32 0
  %185 = load %struct.gb_connection*, %struct.gb_connection** %184, align 8
  %186 = call i32 @gb_fw_download_connection_init(%struct.gb_connection* %185)
  store i32 %186, i32* %9, align 4
  %187 = load i32, i32* %9, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %200

189:                                              ; preds = %182
  %190 = load %struct.gb_bundle*, %struct.gb_bundle** %4, align 8
  %191 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %190, i32 0, i32 2
  %192 = load i32, i32* %9, align 4
  %193 = call i32 (i32*, i8*, ...) @dev_err(i32* %191, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.10, i64 0, i64 0), i32 %192)
  %194 = load %struct.gb_fw_core*, %struct.gb_fw_core** %8, align 8
  %195 = getelementptr inbounds %struct.gb_fw_core, %struct.gb_fw_core* %194, i32 0, i32 0
  %196 = load %struct.gb_connection*, %struct.gb_connection** %195, align 8
  %197 = call i32 @gb_connection_destroy(%struct.gb_connection* %196)
  %198 = load %struct.gb_fw_core*, %struct.gb_fw_core** %8, align 8
  %199 = getelementptr inbounds %struct.gb_fw_core, %struct.gb_fw_core* %198, i32 0, i32 0
  store %struct.gb_connection* null, %struct.gb_connection** %199, align 8
  br label %200

200:                                              ; preds = %189, %182
  %201 = load %struct.gb_fw_core*, %struct.gb_fw_core** %8, align 8
  %202 = getelementptr inbounds %struct.gb_fw_core, %struct.gb_fw_core* %201, i32 0, i32 1
  %203 = load %struct.gb_connection*, %struct.gb_connection** %202, align 8
  %204 = call i32 @gb_fw_spi_connection_init(%struct.gb_connection* %203)
  store i32 %204, i32* %9, align 4
  %205 = load i32, i32* %9, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %218

207:                                              ; preds = %200
  %208 = load %struct.gb_bundle*, %struct.gb_bundle** %4, align 8
  %209 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %208, i32 0, i32 2
  %210 = load i32, i32* %9, align 4
  %211 = call i32 (i32*, i8*, ...) @dev_err(i32* %209, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i64 0, i64 0), i32 %210)
  %212 = load %struct.gb_fw_core*, %struct.gb_fw_core** %8, align 8
  %213 = getelementptr inbounds %struct.gb_fw_core, %struct.gb_fw_core* %212, i32 0, i32 1
  %214 = load %struct.gb_connection*, %struct.gb_connection** %213, align 8
  %215 = call i32 @gb_connection_destroy(%struct.gb_connection* %214)
  %216 = load %struct.gb_fw_core*, %struct.gb_fw_core** %8, align 8
  %217 = getelementptr inbounds %struct.gb_fw_core, %struct.gb_fw_core* %216, i32 0, i32 1
  store %struct.gb_connection* null, %struct.gb_connection** %217, align 8
  br label %218

218:                                              ; preds = %207, %200
  %219 = load %struct.gb_fw_core*, %struct.gb_fw_core** %8, align 8
  %220 = getelementptr inbounds %struct.gb_fw_core, %struct.gb_fw_core* %219, i32 0, i32 2
  %221 = load %struct.gb_connection*, %struct.gb_connection** %220, align 8
  %222 = call i32 @gb_cap_connection_init(%struct.gb_connection* %221)
  store i32 %222, i32* %9, align 4
  %223 = load i32, i32* %9, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %236

225:                                              ; preds = %218
  %226 = load %struct.gb_bundle*, %struct.gb_bundle** %4, align 8
  %227 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %226, i32 0, i32 2
  %228 = load i32, i32* %9, align 4
  %229 = call i32 (i32*, i8*, ...) @dev_err(i32* %227, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.12, i64 0, i64 0), i32 %228)
  %230 = load %struct.gb_fw_core*, %struct.gb_fw_core** %8, align 8
  %231 = getelementptr inbounds %struct.gb_fw_core, %struct.gb_fw_core* %230, i32 0, i32 2
  %232 = load %struct.gb_connection*, %struct.gb_connection** %231, align 8
  %233 = call i32 @gb_connection_destroy(%struct.gb_connection* %232)
  %234 = load %struct.gb_fw_core*, %struct.gb_fw_core** %8, align 8
  %235 = getelementptr inbounds %struct.gb_fw_core, %struct.gb_fw_core* %234, i32 0, i32 2
  store %struct.gb_connection* null, %struct.gb_connection** %235, align 8
  br label %236

236:                                              ; preds = %225, %218
  %237 = load %struct.gb_fw_core*, %struct.gb_fw_core** %8, align 8
  %238 = getelementptr inbounds %struct.gb_fw_core, %struct.gb_fw_core* %237, i32 0, i32 3
  %239 = load %struct.gb_connection*, %struct.gb_connection** %238, align 8
  %240 = call i32 @gb_fw_mgmt_connection_init(%struct.gb_connection* %239)
  store i32 %240, i32* %9, align 4
  %241 = load i32, i32* %9, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %248

243:                                              ; preds = %236
  %244 = load %struct.gb_bundle*, %struct.gb_bundle** %4, align 8
  %245 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %244, i32 0, i32 2
  %246 = load i32, i32* %9, align 4
  %247 = call i32 (i32*, i8*, ...) @dev_err(i32* %245, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.13, i64 0, i64 0), i32 %246)
  br label %264

248:                                              ; preds = %236
  %249 = load %struct.gb_bundle*, %struct.gb_bundle** %4, align 8
  %250 = load %struct.gb_fw_core*, %struct.gb_fw_core** %8, align 8
  %251 = call i32 @greybus_set_drvdata(%struct.gb_bundle* %249, %struct.gb_fw_core* %250)
  %252 = load %struct.gb_bundle*, %struct.gb_bundle** %4, align 8
  %253 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %252, i32 0, i32 1
  %254 = load %struct.TYPE_2__*, %struct.TYPE_2__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* @GB_INTERFACE_QUIRK_NO_PM, align 4
  %258 = and i32 %256, %257
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %263, label %260

260:                                              ; preds = %248
  %261 = load %struct.gb_bundle*, %struct.gb_bundle** %4, align 8
  %262 = call i32 @gb_pm_runtime_put_autosuspend(%struct.gb_bundle* %261)
  br label %263

263:                                              ; preds = %260, %248
  store i32 0, i32* %3, align 4
  br label %297

264:                                              ; preds = %243
  %265 = load %struct.gb_fw_core*, %struct.gb_fw_core** %8, align 8
  %266 = getelementptr inbounds %struct.gb_fw_core, %struct.gb_fw_core* %265, i32 0, i32 2
  %267 = load %struct.gb_connection*, %struct.gb_connection** %266, align 8
  %268 = call i32 @gb_cap_connection_exit(%struct.gb_connection* %267)
  %269 = load %struct.gb_fw_core*, %struct.gb_fw_core** %8, align 8
  %270 = getelementptr inbounds %struct.gb_fw_core, %struct.gb_fw_core* %269, i32 0, i32 1
  %271 = load %struct.gb_connection*, %struct.gb_connection** %270, align 8
  %272 = call i32 @gb_fw_spi_connection_exit(%struct.gb_connection* %271)
  %273 = load %struct.gb_fw_core*, %struct.gb_fw_core** %8, align 8
  %274 = getelementptr inbounds %struct.gb_fw_core, %struct.gb_fw_core* %273, i32 0, i32 0
  %275 = load %struct.gb_connection*, %struct.gb_connection** %274, align 8
  %276 = call i32 @gb_fw_download_connection_exit(%struct.gb_connection* %275)
  br label %277

277:                                              ; preds = %264, %176, %160, %136, %107, %77, %61, %47
  %278 = load %struct.gb_fw_core*, %struct.gb_fw_core** %8, align 8
  %279 = getelementptr inbounds %struct.gb_fw_core, %struct.gb_fw_core* %278, i32 0, i32 3
  %280 = load %struct.gb_connection*, %struct.gb_connection** %279, align 8
  %281 = call i32 @gb_connection_destroy(%struct.gb_connection* %280)
  %282 = load %struct.gb_fw_core*, %struct.gb_fw_core** %8, align 8
  %283 = getelementptr inbounds %struct.gb_fw_core, %struct.gb_fw_core* %282, i32 0, i32 2
  %284 = load %struct.gb_connection*, %struct.gb_connection** %283, align 8
  %285 = call i32 @gb_connection_destroy(%struct.gb_connection* %284)
  %286 = load %struct.gb_fw_core*, %struct.gb_fw_core** %8, align 8
  %287 = getelementptr inbounds %struct.gb_fw_core, %struct.gb_fw_core* %286, i32 0, i32 1
  %288 = load %struct.gb_connection*, %struct.gb_connection** %287, align 8
  %289 = call i32 @gb_connection_destroy(%struct.gb_connection* %288)
  %290 = load %struct.gb_fw_core*, %struct.gb_fw_core** %8, align 8
  %291 = getelementptr inbounds %struct.gb_fw_core, %struct.gb_fw_core* %290, i32 0, i32 0
  %292 = load %struct.gb_connection*, %struct.gb_connection** %291, align 8
  %293 = call i32 @gb_connection_destroy(%struct.gb_connection* %292)
  %294 = load %struct.gb_fw_core*, %struct.gb_fw_core** %8, align 8
  %295 = call i32 @kfree(%struct.gb_fw_core* %294)
  %296 = load i32, i32* %9, align 4
  store i32 %296, i32* %3, align 4
  br label %297

297:                                              ; preds = %277, %263, %17
  %298 = load i32, i32* %3, align 4
  ret i32 %298
}

declare dso_local %struct.gb_fw_core* @kzalloc(i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.gb_connection* @gb_connection_create(%struct.gb_bundle*, i32, i32*) #1

declare dso_local i32 @IS_ERR(%struct.gb_connection*) #1

declare dso_local i32 @PTR_ERR(%struct.gb_connection*) #1

declare dso_local i32 @gb_fw_download_connection_init(%struct.gb_connection*) #1

declare dso_local i32 @gb_connection_destroy(%struct.gb_connection*) #1

declare dso_local i32 @gb_fw_spi_connection_init(%struct.gb_connection*) #1

declare dso_local i32 @gb_cap_connection_init(%struct.gb_connection*) #1

declare dso_local i32 @gb_fw_mgmt_connection_init(%struct.gb_connection*) #1

declare dso_local i32 @greybus_set_drvdata(%struct.gb_bundle*, %struct.gb_fw_core*) #1

declare dso_local i32 @gb_pm_runtime_put_autosuspend(%struct.gb_bundle*) #1

declare dso_local i32 @gb_cap_connection_exit(%struct.gb_connection*) #1

declare dso_local i32 @gb_fw_spi_connection_exit(%struct.gb_connection*) #1

declare dso_local i32 @gb_fw_download_connection_exit(%struct.gb_connection*) #1

declare dso_local i32 @kfree(%struct.gb_fw_core*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
