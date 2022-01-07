; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_switch.c_nvm_authenticate_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_switch.c_nvm_authenticate_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_switch = type { i32 }

@ETIMEDOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed to authenticate NVM\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"power cycling the switch now\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tb_switch*)* @nvm_authenticate_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvm_authenticate_device(%struct.tb_switch* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tb_switch*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.tb_switch* %0, %struct.tb_switch** %3, align 8
  store i32 10, i32* %5, align 4
  %7 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %8 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @dma_port_flash_update_auth(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @ETIMEDOUT, align 4
  %16 = sub nsw i32 0, %15
  %17 = icmp ne i32 %14, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %63

20:                                               ; preds = %13, %1
  br label %21

21:                                               ; preds = %56, %20
  %22 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %23 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dma_port_flash_update_auth_status(i32 %24, i64* %6)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %21
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @ETIMEDOUT, align 4
  %31 = sub nsw i32 0, %30
  %32 = icmp ne i32 %29, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %63

35:                                               ; preds = %28, %21
  %36 = load i32, i32* %4, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %35
  %39 = load i64, i64* %6, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %43 = call i32 @tb_sw_warn(%struct.tb_switch* %42, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %44 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %45 = load i64, i64* %6, align 8
  %46 = call i32 @nvm_set_auth_status(%struct.tb_switch* %44, i64 %45)
  br label %47

47:                                               ; preds = %41, %38
  %48 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %49 = call i32 @tb_sw_info(%struct.tb_switch* %48, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %50 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %51 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @dma_port_power_cycle(i32 %52)
  store i32 0, i32* %2, align 4
  br label %63

54:                                               ; preds = %35
  %55 = call i32 @msleep(i32 500)
  br label %56

56:                                               ; preds = %54
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %21, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* @ETIMEDOUT, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %60, %47, %33, %18
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @dma_port_flash_update_auth(i32) #1

declare dso_local i32 @dma_port_flash_update_auth_status(i32, i64*) #1

declare dso_local i32 @tb_sw_warn(%struct.tb_switch*, i8*) #1

declare dso_local i32 @nvm_set_auth_status(%struct.tb_switch*, i64) #1

declare dso_local i32 @tb_sw_info(%struct.tb_switch*, i8*) #1

declare dso_local i32 @dma_port_power_cycle(i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
