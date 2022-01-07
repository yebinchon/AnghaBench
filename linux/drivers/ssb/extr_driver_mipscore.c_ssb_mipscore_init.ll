; ModuleID = '/home/carl/AnghaBench/linux/drivers/ssb/extr_driver_mipscore.c_ssb_mipscore_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ssb/extr_driver_mipscore.c_ssb_mipscore_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_mipscore = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.ssb_bus* }
%struct.ssb_bus = type { i32, i32, %struct.ssb_device*, i32, i32 }
%struct.ssb_device = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"Initializing MIPS core...\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"after irq reconfiguration\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ssb_mipscore_init(%struct.ssb_mipscore* %0) #0 {
  %2 = alloca %struct.ssb_mipscore*, align 8
  %3 = alloca %struct.ssb_bus*, align 8
  %4 = alloca %struct.ssb_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ssb_mipscore* %0, %struct.ssb_mipscore** %2, align 8
  %10 = load %struct.ssb_mipscore*, %struct.ssb_mipscore** %2, align 8
  %11 = getelementptr inbounds %struct.ssb_mipscore, %struct.ssb_mipscore* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = icmp ne %struct.TYPE_4__* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %135

15:                                               ; preds = %1
  %16 = load %struct.ssb_mipscore*, %struct.ssb_mipscore** %2, align 8
  %17 = getelementptr inbounds %struct.ssb_mipscore, %struct.ssb_mipscore* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @dev_dbg(i32 %20, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.ssb_mipscore*, %struct.ssb_mipscore** %2, align 8
  %23 = getelementptr inbounds %struct.ssb_mipscore, %struct.ssb_mipscore* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load %struct.ssb_bus*, %struct.ssb_bus** %25, align 8
  store %struct.ssb_bus* %26, %struct.ssb_bus** %3, align 8
  %27 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %28 = call i64 @ssb_clockspeed(%struct.ssb_bus* %27)
  store i64 %28, i64* %5, align 8
  %29 = load i64, i64* %5, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %15
  store i64 100000000, i64* %5, align 8
  br label %32

32:                                               ; preds = %31, %15
  %33 = load i64, i64* %5, align 8
  %34 = udiv i64 1000000000, %33
  store i64 %34, i64* %6, align 8
  %35 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %36 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %35, i32 0, i32 4
  %37 = call i64 @ssb_extif_available(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %32
  %40 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %41 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %40, i32 0, i32 4
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @ssb_extif_timing_init(i32* %41, i64 %42)
  br label %55

44:                                               ; preds = %32
  %45 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %46 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %45, i32 0, i32 3
  %47 = call i64 @ssb_chipco_available(i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %51 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %50, i32 0, i32 3
  %52 = load i64, i64* %6, align 8
  %53 = call i32 @ssb_chipco_timing_init(i32* %51, i64 %52)
  br label %54

54:                                               ; preds = %49, %44
  br label %55

55:                                               ; preds = %54, %39
  store i32 2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %56

56:                                               ; preds = %119, %55
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %59 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ult i32 %57, %60
  br i1 %61, label %62, label %122

62:                                               ; preds = %56
  %63 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %64 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %63, i32 0, i32 2
  %65 = load %struct.ssb_device*, %struct.ssb_device** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %65, i64 %67
  store %struct.ssb_device* %68, %struct.ssb_device** %4, align 8
  %69 = load %struct.ssb_device*, %struct.ssb_device** %4, align 8
  %70 = call i32 @ssb_mips_irq(%struct.ssb_device* %69)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp sgt i32 %71, 4
  br i1 %72, label %73, label %76

73:                                               ; preds = %62
  %74 = load %struct.ssb_device*, %struct.ssb_device** %4, align 8
  %75 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %74, i32 0, i32 0
  store i32 0, i32* %75, align 4
  br label %81

76:                                               ; preds = %62
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %77, 2
  %79 = load %struct.ssb_device*, %struct.ssb_device** %4, align 8
  %80 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  br label %81

81:                                               ; preds = %76, %73
  %82 = load %struct.ssb_device*, %struct.ssb_device** %4, align 8
  %83 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp sgt i32 %84, 5
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  br label %119

87:                                               ; preds = %81
  %88 = load %struct.ssb_device*, %struct.ssb_device** %4, align 8
  %89 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  switch i32 %91, label %118 [
    i32 129, label %92
    i32 130, label %106
    i32 133, label %106
    i32 132, label %106
    i32 134, label %106
    i32 128, label %106
    i32 131, label %115
  ]

92:                                               ; preds = %87
  %93 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %94 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, 18192
  br i1 %96, label %97, label %105

97:                                               ; preds = %92
  %98 = load i32, i32* %7, align 4
  %99 = icmp ule i32 %98, 4
  br i1 %99, label %100, label %105

100:                                              ; preds = %97
  %101 = load %struct.ssb_device*, %struct.ssb_device** %4, align 8
  %102 = load i32, i32* %7, align 4
  %103 = add i32 %102, 1
  store i32 %103, i32* %7, align 4
  %104 = call i32 @set_irq(%struct.ssb_device* %101, i32 %102)
  br label %105

105:                                              ; preds = %100, %97, %92
  br label %118

106:                                              ; preds = %87, %87, %87, %87, %87
  %107 = load i32, i32* %7, align 4
  %108 = icmp ule i32 %107, 4
  br i1 %108, label %109, label %114

109:                                              ; preds = %106
  %110 = load %struct.ssb_device*, %struct.ssb_device** %4, align 8
  %111 = load i32, i32* %7, align 4
  %112 = add i32 %111, 1
  store i32 %112, i32* %7, align 4
  %113 = call i32 @set_irq(%struct.ssb_device* %110, i32 %111)
  br label %118

114:                                              ; preds = %106
  br label %115

115:                                              ; preds = %87, %114
  %116 = load %struct.ssb_device*, %struct.ssb_device** %4, align 8
  %117 = call i32 @set_irq(%struct.ssb_device* %116, i32 0)
  br label %118

118:                                              ; preds = %87, %115, %109, %105
  br label %119

119:                                              ; preds = %118, %86
  %120 = load i32, i32* %8, align 4
  %121 = add i32 %120, 1
  store i32 %121, i32* %8, align 4
  br label %56

122:                                              ; preds = %56
  %123 = load %struct.ssb_mipscore*, %struct.ssb_mipscore** %2, align 8
  %124 = getelementptr inbounds %struct.ssb_mipscore, %struct.ssb_mipscore* %123, i32 0, i32 0
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @dev_dbg(i32 %127, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %129 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %130 = call i32 @dump_irq(%struct.ssb_bus* %129)
  %131 = load %struct.ssb_mipscore*, %struct.ssb_mipscore** %2, align 8
  %132 = call i32 @ssb_mips_serial_init(%struct.ssb_mipscore* %131)
  %133 = load %struct.ssb_mipscore*, %struct.ssb_mipscore** %2, align 8
  %134 = call i32 @ssb_mips_flash_detect(%struct.ssb_mipscore* %133)
  br label %135

135:                                              ; preds = %122, %14
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i64 @ssb_clockspeed(%struct.ssb_bus*) #1

declare dso_local i64 @ssb_extif_available(i32*) #1

declare dso_local i32 @ssb_extif_timing_init(i32*, i64) #1

declare dso_local i64 @ssb_chipco_available(i32*) #1

declare dso_local i32 @ssb_chipco_timing_init(i32*, i64) #1

declare dso_local i32 @ssb_mips_irq(%struct.ssb_device*) #1

declare dso_local i32 @set_irq(%struct.ssb_device*, i32) #1

declare dso_local i32 @dump_irq(%struct.ssb_bus*) #1

declare dso_local i32 @ssb_mips_serial_init(%struct.ssb_mipscore*) #1

declare dso_local i32 @ssb_mips_flash_detect(%struct.ssb_mipscore*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
