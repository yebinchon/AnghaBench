; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_daqboard2000.c_db2k_load_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_daqboard2000.c_db2k_load_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, i32, %struct.db2k_private* }
%struct.db2k_private = type { i64 }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"bad firmware - no start sequence\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"bad firmware - odd length (%zu = %zu - %zu)\0A\00", align 1
@PLX_REG_CNTRL = common dso_local global i64 0, align 8
@PLX_CNTRL_EEPRESENT = common dso_local global i32 0, align 4
@DB2K_REG_CPLD_STATUS = common dso_local global i64 0, align 8
@DB2K_CPLD_VERSION_MASK = common dso_local global i32 0, align 4
@DB2K_CPLD_VERSION_NEW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i32*, i64, i64)* @db2k_load_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @db2k_load_firmware(%struct.comedi_device* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.db2k_private*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %18 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %17, i32 0, i32 2
  %19 = load %struct.db2k_private*, %struct.db2k_private** %18, align 8
  store %struct.db2k_private* %19, %struct.db2k_private** %10, align 8
  %20 = load i32, i32* @EIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %11, align 4
  store i64 0, i64* %14, align 8
  br label %22

22:                                               ; preds = %42, %4
  %23 = load i64, i64* %14, align 8
  %24 = add i64 %23, 1
  %25 = load i64, i64* %8, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %45

27:                                               ; preds = %22
  %28 = load i32*, i32** %7, align 8
  %29 = load i64, i64* %14, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 255
  br i1 %32, label %33, label %41

33:                                               ; preds = %27
  %34 = load i32*, i32** %7, align 8
  %35 = load i64, i64* %14, align 8
  %36 = add i64 %35, 1
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 32
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %45

41:                                               ; preds = %33, %27
  br label %42

42:                                               ; preds = %41
  %43 = load i64, i64* %14, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %14, align 8
  br label %22

45:                                               ; preds = %40, %22
  %46 = load i64, i64* %14, align 8
  %47 = add i64 %46, 1
  %48 = load i64, i64* %8, align 8
  %49 = icmp uge i64 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %52 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 (i32, i8*, ...) @dev_err(i32 %53, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %5, align 4
  br label %170

57:                                               ; preds = %45
  %58 = load i64, i64* %8, align 8
  %59 = load i64, i64* %14, align 8
  %60 = sub i64 %58, %59
  %61 = and i64 %60, 1
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %57
  %64 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %65 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i64, i64* %8, align 8
  %68 = load i64, i64* %14, align 8
  %69 = sub i64 %67, %68
  %70 = load i64, i64* %8, align 8
  %71 = load i64, i64* %14, align 8
  %72 = call i32 (i32, i8*, ...) @dev_err(i32 %66, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %69, i64 %70, i64 %71)
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %5, align 4
  br label %170

75:                                               ; preds = %57
  %76 = load i64, i64* %14, align 8
  %77 = load i32*, i32** %7, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 %76
  store i32* %78, i32** %7, align 8
  %79 = load i64, i64* %14, align 8
  %80 = load i64, i64* %8, align 8
  %81 = sub i64 %80, %79
  store i64 %81, i64* %8, align 8
  %82 = load %struct.db2k_private*, %struct.db2k_private** %10, align 8
  %83 = getelementptr inbounds %struct.db2k_private, %struct.db2k_private* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @PLX_REG_CNTRL, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @readl(i64 %86)
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* @PLX_CNTRL_EEPRESENT, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %75
  %93 = load i32, i32* @EIO, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %5, align 4
  br label %170

95:                                               ; preds = %75
  store i32 0, i32* %13, align 4
  br label %96

96:                                               ; preds = %165, %95
  %97 = load i32, i32* %13, align 4
  %98 = icmp slt i32 %97, 3
  br i1 %98, label %99, label %168

99:                                               ; preds = %96
  %100 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %101 = call i32 @db2k_reset_local_bus(%struct.comedi_device* %100)
  %102 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %103 = call i32 @db2k_reload_plx(%struct.comedi_device* %102)
  %104 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %105 = call i32 @db2k_pulse_prog_pin(%struct.comedi_device* %104)
  %106 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %107 = call i32 @db2k_wait_cpld_init(%struct.comedi_device* %106)
  store i32 %107, i32* %11, align 4
  %108 = load i32, i32* %11, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %99
  br label %165

111:                                              ; preds = %99
  %112 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %113 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @DB2K_REG_CPLD_STATUS, align 8
  %116 = add nsw i64 %114, %115
  %117 = call i32 @readw(i64 %116)
  %118 = load i32, i32* @DB2K_CPLD_VERSION_MASK, align 4
  %119 = and i32 %117, %118
  %120 = load i32, i32* @DB2K_CPLD_VERSION_NEW, align 4
  %121 = icmp eq i32 %119, %120
  %122 = zext i1 %121 to i32
  store i32 %122, i32* %15, align 4
  br label %123

123:                                              ; preds = %147, %111
  %124 = load i64, i64* %14, align 8
  %125 = load i64, i64* %8, align 8
  %126 = icmp ult i64 %124, %125
  br i1 %126, label %127, label %150

127:                                              ; preds = %123
  %128 = load i32*, i32** %7, align 8
  %129 = load i64, i64* %14, align 8
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = shl i32 %131, 8
  %133 = load i32*, i32** %7, align 8
  %134 = load i64, i64* %14, align 8
  %135 = add i64 %134, 1
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 %132, %137
  store i32 %138, i32* %16, align 4
  %139 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %140 = load i32, i32* %16, align 4
  %141 = load i32, i32* %15, align 4
  %142 = call i32 @db2k_write_cpld(%struct.comedi_device* %139, i32 %140, i32 %141)
  store i32 %142, i32* %11, align 4
  %143 = load i32, i32* %11, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %127
  br label %150

146:                                              ; preds = %127
  br label %147

147:                                              ; preds = %146
  %148 = load i64, i64* %14, align 8
  %149 = add i64 %148, 2
  store i64 %149, i64* %14, align 8
  br label %123

150:                                              ; preds = %145, %123
  %151 = load i32, i32* %11, align 4
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %150
  %154 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %155 = call i32 @db2k_wait_fpga_programmed(%struct.comedi_device* %154)
  store i32 %155, i32* %11, align 4
  br label %156

156:                                              ; preds = %153, %150
  %157 = load i32, i32* %11, align 4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %156
  %160 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %161 = call i32 @db2k_reset_local_bus(%struct.comedi_device* %160)
  %162 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %163 = call i32 @db2k_reload_plx(%struct.comedi_device* %162)
  br label %168

164:                                              ; preds = %156
  br label %165

165:                                              ; preds = %164, %110
  %166 = load i32, i32* %13, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %13, align 4
  br label %96

168:                                              ; preds = %159, %96
  %169 = load i32, i32* %11, align 4
  store i32 %169, i32* %5, align 4
  br label %170

170:                                              ; preds = %168, %92, %63, %50
  %171 = load i32, i32* %5, align 4
  ret i32 %171
}

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @db2k_reset_local_bus(%struct.comedi_device*) #1

declare dso_local i32 @db2k_reload_plx(%struct.comedi_device*) #1

declare dso_local i32 @db2k_pulse_prog_pin(%struct.comedi_device*) #1

declare dso_local i32 @db2k_wait_cpld_init(%struct.comedi_device*) #1

declare dso_local i32 @readw(i64) #1

declare dso_local i32 @db2k_write_cpld(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @db2k_wait_fpga_programmed(%struct.comedi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
