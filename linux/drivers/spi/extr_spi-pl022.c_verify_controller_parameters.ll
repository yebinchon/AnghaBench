; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pl022.c_verify_controller_parameters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pl022.c_verify_controller_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pl022 = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i64, i32 }
%struct.pl022_config_chip = type { i64, i64, i64, i32, i32, i64, i64, i64 }

@SSP_INTERFACE_MOTOROLA_SPI = common dso_local global i64 0, align 8
@SSP_INTERFACE_UNIDIRECTIONAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"interface is configured incorrectly\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"unidirectional mode not supported in this hardware version\0A\00", align 1
@SSP_MASTER = common dso_local global i64 0, align 8
@SSP_SLAVE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"hierarchy is configured incorrectly\0A\00", align 1
@INTERRUPT_TRANSFER = common dso_local global i64 0, align 8
@DMA_TRANSFER = common dso_local global i64 0, align 8
@POLLING_TRANSFER = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [46 x i8] c"Communication mode is configured incorrectly\0A\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"RX FIFO Trigger Level is configured incorrectly\0A\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"TX FIFO Trigger Level is configured incorrectly\0A\00", align 1
@SSP_INTERFACE_NATIONAL_MICROWIRE = common dso_local global i64 0, align 8
@SSP_BITS_4 = common dso_local global i64 0, align 8
@SSP_BITS_32 = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [36 x i8] c"CTRL LEN is configured incorrectly\0A\00", align 1
@SSP_MWIRE_WAIT_ZERO = common dso_local global i64 0, align 8
@SSP_MWIRE_WAIT_ONE = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [38 x i8] c"Wait State is configured incorrectly\0A\00", align 1
@SSP_MICROWIRE_CHANNEL_FULL_DUPLEX = common dso_local global i64 0, align 8
@SSP_MICROWIRE_CHANNEL_HALF_DUPLEX = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [49 x i8] c"Microwire duplex mode is configured incorrectly\0A\00", align 1
@.str.9 = private unnamed_addr constant [93 x i8] c"Microwire half duplex mode requested, but this is only available in the ST version of PL022\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pl022*, %struct.pl022_config_chip*)* @verify_controller_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_controller_parameters(%struct.pl022* %0, %struct.pl022_config_chip* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pl022*, align 8
  %5 = alloca %struct.pl022_config_chip*, align 8
  store %struct.pl022* %0, %struct.pl022** %4, align 8
  store %struct.pl022_config_chip* %1, %struct.pl022_config_chip** %5, align 8
  %6 = load %struct.pl022_config_chip*, %struct.pl022_config_chip** %5, align 8
  %7 = getelementptr inbounds %struct.pl022_config_chip, %struct.pl022_config_chip* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @SSP_INTERFACE_MOTOROLA_SPI, align 8
  %10 = icmp slt i64 %8, %9
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load %struct.pl022_config_chip*, %struct.pl022_config_chip** %5, align 8
  %13 = getelementptr inbounds %struct.pl022_config_chip, %struct.pl022_config_chip* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SSP_INTERFACE_UNIDIRECTIONAL, align 8
  %16 = icmp sgt i64 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %11, %2
  %18 = load %struct.pl022*, %struct.pl022** %4, align 8
  %19 = getelementptr inbounds %struct.pl022, %struct.pl022* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = call i32 @dev_err(i32* %21, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %273

25:                                               ; preds = %11
  %26 = load %struct.pl022_config_chip*, %struct.pl022_config_chip** %5, align 8
  %27 = getelementptr inbounds %struct.pl022_config_chip, %struct.pl022_config_chip* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SSP_INTERFACE_UNIDIRECTIONAL, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %25
  %32 = load %struct.pl022*, %struct.pl022** %4, align 8
  %33 = getelementptr inbounds %struct.pl022, %struct.pl022* %32, i32 0, i32 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %31
  %39 = load %struct.pl022*, %struct.pl022** %4, align 8
  %40 = getelementptr inbounds %struct.pl022, %struct.pl022* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = call i32 @dev_err(i32* %42, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %273

46:                                               ; preds = %31, %25
  %47 = load %struct.pl022_config_chip*, %struct.pl022_config_chip** %5, align 8
  %48 = getelementptr inbounds %struct.pl022_config_chip, %struct.pl022_config_chip* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @SSP_MASTER, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %66

52:                                               ; preds = %46
  %53 = load %struct.pl022_config_chip*, %struct.pl022_config_chip** %5, align 8
  %54 = getelementptr inbounds %struct.pl022_config_chip, %struct.pl022_config_chip* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @SSP_SLAVE, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %52
  %59 = load %struct.pl022*, %struct.pl022** %4, align 8
  %60 = getelementptr inbounds %struct.pl022, %struct.pl022* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = call i32 @dev_err(i32* %62, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %273

66:                                               ; preds = %52, %46
  %67 = load %struct.pl022_config_chip*, %struct.pl022_config_chip** %5, align 8
  %68 = getelementptr inbounds %struct.pl022_config_chip, %struct.pl022_config_chip* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @INTERRUPT_TRANSFER, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %92

72:                                               ; preds = %66
  %73 = load %struct.pl022_config_chip*, %struct.pl022_config_chip** %5, align 8
  %74 = getelementptr inbounds %struct.pl022_config_chip, %struct.pl022_config_chip* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @DMA_TRANSFER, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %92

78:                                               ; preds = %72
  %79 = load %struct.pl022_config_chip*, %struct.pl022_config_chip** %5, align 8
  %80 = getelementptr inbounds %struct.pl022_config_chip, %struct.pl022_config_chip* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @POLLING_TRANSFER, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %92

84:                                               ; preds = %78
  %85 = load %struct.pl022*, %struct.pl022** %4, align 8
  %86 = getelementptr inbounds %struct.pl022, %struct.pl022* %85, i32 0, i32 0
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = call i32 @dev_err(i32* %88, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %3, align 4
  br label %273

92:                                               ; preds = %78, %72, %66
  %93 = load %struct.pl022_config_chip*, %struct.pl022_config_chip** %5, align 8
  %94 = getelementptr inbounds %struct.pl022_config_chip, %struct.pl022_config_chip* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  switch i32 %95, label %129 [
    i32 136, label %96
    i32 134, label %96
    i32 133, label %96
    i32 137, label %97
    i32 135, label %113
  ]

96:                                               ; preds = %92, %92, %92
  br label %137

97:                                               ; preds = %92
  %98 = load %struct.pl022*, %struct.pl022** %4, align 8
  %99 = getelementptr inbounds %struct.pl022, %struct.pl022* %98, i32 0, i32 1
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp slt i32 %102, 16
  br i1 %103, label %104, label %112

104:                                              ; preds = %97
  %105 = load %struct.pl022*, %struct.pl022** %4, align 8
  %106 = getelementptr inbounds %struct.pl022, %struct.pl022* %105, i32 0, i32 0
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = call i32 @dev_err(i32* %108, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0))
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %3, align 4
  br label %273

112:                                              ; preds = %97
  br label %137

113:                                              ; preds = %92
  %114 = load %struct.pl022*, %struct.pl022** %4, align 8
  %115 = getelementptr inbounds %struct.pl022, %struct.pl022* %114, i32 0, i32 1
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp slt i32 %118, 32
  br i1 %119, label %120, label %128

120:                                              ; preds = %113
  %121 = load %struct.pl022*, %struct.pl022** %4, align 8
  %122 = getelementptr inbounds %struct.pl022, %struct.pl022* %121, i32 0, i32 0
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = call i32 @dev_err(i32* %124, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0))
  %126 = load i32, i32* @EINVAL, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %3, align 4
  br label %273

128:                                              ; preds = %113
  br label %137

129:                                              ; preds = %92
  %130 = load %struct.pl022*, %struct.pl022** %4, align 8
  %131 = getelementptr inbounds %struct.pl022, %struct.pl022* %130, i32 0, i32 0
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = call i32 @dev_err(i32* %133, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0))
  %135 = load i32, i32* @EINVAL, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %3, align 4
  br label %273

137:                                              ; preds = %128, %112, %96
  %138 = load %struct.pl022_config_chip*, %struct.pl022_config_chip** %5, align 8
  %139 = getelementptr inbounds %struct.pl022_config_chip, %struct.pl022_config_chip* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 4
  switch i32 %140, label %174 [
    i32 131, label %141
    i32 129, label %141
    i32 128, label %141
    i32 132, label %142
    i32 130, label %158
  ]

141:                                              ; preds = %137, %137, %137
  br label %182

142:                                              ; preds = %137
  %143 = load %struct.pl022*, %struct.pl022** %4, align 8
  %144 = getelementptr inbounds %struct.pl022, %struct.pl022* %143, i32 0, i32 1
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = icmp slt i32 %147, 16
  br i1 %148, label %149, label %157

149:                                              ; preds = %142
  %150 = load %struct.pl022*, %struct.pl022** %4, align 8
  %151 = getelementptr inbounds %struct.pl022, %struct.pl022* %150, i32 0, i32 0
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = call i32 @dev_err(i32* %153, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0))
  %155 = load i32, i32* @EINVAL, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %3, align 4
  br label %273

157:                                              ; preds = %142
  br label %182

158:                                              ; preds = %137
  %159 = load %struct.pl022*, %struct.pl022** %4, align 8
  %160 = getelementptr inbounds %struct.pl022, %struct.pl022* %159, i32 0, i32 1
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = icmp slt i32 %163, 32
  br i1 %164, label %165, label %173

165:                                              ; preds = %158
  %166 = load %struct.pl022*, %struct.pl022** %4, align 8
  %167 = getelementptr inbounds %struct.pl022, %struct.pl022* %166, i32 0, i32 0
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = call i32 @dev_err(i32* %169, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0))
  %171 = load i32, i32* @EINVAL, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %3, align 4
  br label %273

173:                                              ; preds = %158
  br label %182

174:                                              ; preds = %137
  %175 = load %struct.pl022*, %struct.pl022** %4, align 8
  %176 = getelementptr inbounds %struct.pl022, %struct.pl022* %175, i32 0, i32 0
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 0
  %179 = call i32 @dev_err(i32* %178, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0))
  %180 = load i32, i32* @EINVAL, align 4
  %181 = sub nsw i32 0, %180
  store i32 %181, i32* %3, align 4
  br label %273

182:                                              ; preds = %173, %157, %141
  %183 = load %struct.pl022_config_chip*, %struct.pl022_config_chip** %5, align 8
  %184 = getelementptr inbounds %struct.pl022_config_chip, %struct.pl022_config_chip* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @SSP_INTERFACE_NATIONAL_MICROWIRE, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %272

188:                                              ; preds = %182
  %189 = load %struct.pl022_config_chip*, %struct.pl022_config_chip** %5, align 8
  %190 = getelementptr inbounds %struct.pl022_config_chip, %struct.pl022_config_chip* %189, i32 0, i32 5
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @SSP_BITS_4, align 8
  %193 = icmp slt i64 %191, %192
  br i1 %193, label %200, label %194

194:                                              ; preds = %188
  %195 = load %struct.pl022_config_chip*, %struct.pl022_config_chip** %5, align 8
  %196 = getelementptr inbounds %struct.pl022_config_chip, %struct.pl022_config_chip* %195, i32 0, i32 5
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @SSP_BITS_32, align 8
  %199 = icmp sgt i64 %197, %198
  br i1 %199, label %200, label %208

200:                                              ; preds = %194, %188
  %201 = load %struct.pl022*, %struct.pl022** %4, align 8
  %202 = getelementptr inbounds %struct.pl022, %struct.pl022* %201, i32 0, i32 0
  %203 = load %struct.TYPE_4__*, %struct.TYPE_4__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 0
  %205 = call i32 @dev_err(i32* %204, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %206 = load i32, i32* @EINVAL, align 4
  %207 = sub nsw i32 0, %206
  store i32 %207, i32* %3, align 4
  br label %273

208:                                              ; preds = %194
  %209 = load %struct.pl022_config_chip*, %struct.pl022_config_chip** %5, align 8
  %210 = getelementptr inbounds %struct.pl022_config_chip, %struct.pl022_config_chip* %209, i32 0, i32 6
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @SSP_MWIRE_WAIT_ZERO, align 8
  %213 = icmp ne i64 %211, %212
  br i1 %213, label %214, label %228

214:                                              ; preds = %208
  %215 = load %struct.pl022_config_chip*, %struct.pl022_config_chip** %5, align 8
  %216 = getelementptr inbounds %struct.pl022_config_chip, %struct.pl022_config_chip* %215, i32 0, i32 6
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* @SSP_MWIRE_WAIT_ONE, align 8
  %219 = icmp ne i64 %217, %218
  br i1 %219, label %220, label %228

220:                                              ; preds = %214
  %221 = load %struct.pl022*, %struct.pl022** %4, align 8
  %222 = getelementptr inbounds %struct.pl022, %struct.pl022* %221, i32 0, i32 0
  %223 = load %struct.TYPE_4__*, %struct.TYPE_4__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 0
  %225 = call i32 @dev_err(i32* %224, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0))
  %226 = load i32, i32* @EINVAL, align 4
  %227 = sub nsw i32 0, %226
  store i32 %227, i32* %3, align 4
  br label %273

228:                                              ; preds = %214, %208
  %229 = load %struct.pl022*, %struct.pl022** %4, align 8
  %230 = getelementptr inbounds %struct.pl022, %struct.pl022* %229, i32 0, i32 1
  %231 = load %struct.TYPE_3__*, %struct.TYPE_3__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %256

235:                                              ; preds = %228
  %236 = load %struct.pl022_config_chip*, %struct.pl022_config_chip** %5, align 8
  %237 = getelementptr inbounds %struct.pl022_config_chip, %struct.pl022_config_chip* %236, i32 0, i32 7
  %238 = load i64, i64* %237, align 8
  %239 = load i64, i64* @SSP_MICROWIRE_CHANNEL_FULL_DUPLEX, align 8
  %240 = icmp ne i64 %238, %239
  br i1 %240, label %241, label %255

241:                                              ; preds = %235
  %242 = load %struct.pl022_config_chip*, %struct.pl022_config_chip** %5, align 8
  %243 = getelementptr inbounds %struct.pl022_config_chip, %struct.pl022_config_chip* %242, i32 0, i32 7
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* @SSP_MICROWIRE_CHANNEL_HALF_DUPLEX, align 8
  %246 = icmp ne i64 %244, %245
  br i1 %246, label %247, label %255

247:                                              ; preds = %241
  %248 = load %struct.pl022*, %struct.pl022** %4, align 8
  %249 = getelementptr inbounds %struct.pl022, %struct.pl022* %248, i32 0, i32 0
  %250 = load %struct.TYPE_4__*, %struct.TYPE_4__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %250, i32 0, i32 0
  %252 = call i32 @dev_err(i32* %251, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i64 0, i64 0))
  %253 = load i32, i32* @EINVAL, align 4
  %254 = sub nsw i32 0, %253
  store i32 %254, i32* %3, align 4
  br label %273

255:                                              ; preds = %241, %235
  br label %271

256:                                              ; preds = %228
  %257 = load %struct.pl022_config_chip*, %struct.pl022_config_chip** %5, align 8
  %258 = getelementptr inbounds %struct.pl022_config_chip, %struct.pl022_config_chip* %257, i32 0, i32 7
  %259 = load i64, i64* %258, align 8
  %260 = load i64, i64* @SSP_MICROWIRE_CHANNEL_FULL_DUPLEX, align 8
  %261 = icmp ne i64 %259, %260
  br i1 %261, label %262, label %268

262:                                              ; preds = %256
  %263 = load %struct.pl022*, %struct.pl022** %4, align 8
  %264 = getelementptr inbounds %struct.pl022, %struct.pl022* %263, i32 0, i32 0
  %265 = load %struct.TYPE_4__*, %struct.TYPE_4__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %265, i32 0, i32 0
  %267 = call i32 @dev_err(i32* %266, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.9, i64 0, i64 0))
  br label %268

268:                                              ; preds = %262, %256
  %269 = load i32, i32* @EINVAL, align 4
  %270 = sub nsw i32 0, %269
  store i32 %270, i32* %3, align 4
  br label %273

271:                                              ; preds = %255
  br label %272

272:                                              ; preds = %271, %182
  store i32 0, i32* %3, align 4
  br label %273

273:                                              ; preds = %272, %268, %247, %220, %200, %174, %165, %149, %129, %120, %104, %84, %58, %38, %17
  %274 = load i32, i32* %3, align 4
  ret i32 %274
}

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
