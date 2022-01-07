; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_switch.c_tb_switch_add_dma_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_switch.c_tb_switch_add_dma_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_switch = type { i32, i32, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [36 x i8] c"switch flash authentication failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"power cycling the switch now\0A\00", align 1
@ESHUTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tb_switch*)* @tb_switch_add_dma_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tb_switch_add_dma_port(%struct.tb_switch* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tb_switch*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.tb_switch* %0, %struct.tb_switch** %3, align 8
  %6 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %7 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %16 [
    i32 3, label %9
    i32 2, label %10
  ]

9:                                                ; preds = %1
  br label %23

10:                                               ; preds = %1
  %11 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %12 = call i64 @tb_route(%struct.tb_switch* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %91

15:                                               ; preds = %10
  br label %23

16:                                               ; preds = %1
  %17 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %18 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %91

22:                                               ; preds = %16
  br label %23

23:                                               ; preds = %22, %15, %9
  %24 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %25 = call i64 @tb_route(%struct.tb_switch* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %23
  %28 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %29 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %91

34:                                               ; preds = %27, %23
  %35 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %36 = call i32 @dma_port_alloc(%struct.tb_switch* %35)
  %37 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %38 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %40 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %91

44:                                               ; preds = %34
  %45 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %46 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %91

50:                                               ; preds = %44
  %51 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %52 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @dma_port_flash_update_auth_status(i32 %53, i64* %4)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp sle i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i32, i32* %5, align 4
  store i32 %58, i32* %2, align 4
  br label %91

59:                                               ; preds = %50
  %60 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %61 = call i64 @tb_route(%struct.tb_switch* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %59
  %64 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %65 = call i32 @nvm_authenticate_complete(%struct.tb_switch* %64)
  br label %66

66:                                               ; preds = %63, %59
  %67 = load i64, i64* %4, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %66
  %70 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %71 = call i32 @tb_sw_info(%struct.tb_switch* %70, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %72 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %73 = call i32 @tb_switch_set_uuid(%struct.tb_switch* %72)
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = load i32, i32* %5, align 4
  store i32 %77, i32* %2, align 4
  br label %91

78:                                               ; preds = %69
  %79 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %80 = load i64, i64* %4, align 8
  %81 = call i32 @nvm_set_auth_status(%struct.tb_switch* %79, i64 %80)
  br label %82

82:                                               ; preds = %78, %66
  %83 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %84 = call i32 @tb_sw_info(%struct.tb_switch* %83, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %85 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %86 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @dma_port_power_cycle(i32 %87)
  %89 = load i32, i32* @ESHUTDOWN, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %82, %76, %57, %49, %43, %33, %21, %14
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i64 @tb_route(%struct.tb_switch*) #1

declare dso_local i32 @dma_port_alloc(%struct.tb_switch*) #1

declare dso_local i32 @dma_port_flash_update_auth_status(i32, i64*) #1

declare dso_local i32 @nvm_authenticate_complete(%struct.tb_switch*) #1

declare dso_local i32 @tb_sw_info(%struct.tb_switch*, i8*) #1

declare dso_local i32 @tb_switch_set_uuid(%struct.tb_switch*) #1

declare dso_local i32 @nvm_set_auth_status(%struct.tb_switch*, i64) #1

declare dso_local i32 @dma_port_power_cycle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
