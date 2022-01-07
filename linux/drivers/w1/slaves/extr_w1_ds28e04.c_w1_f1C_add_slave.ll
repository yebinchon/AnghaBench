; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds28e04.c_w1_f1C_add_slave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds28e04.c_w1_f1C_add_slave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w1_slave = type { %struct.w1_f1C_data* }
%struct.w1_f1C_data = type { i32 }

@w1_enable_crccheck = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.w1_slave*)* @w1_f1C_add_slave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w1_f1C_add_slave(%struct.w1_slave* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.w1_slave*, align 8
  %4 = alloca %struct.w1_f1C_data*, align 8
  store %struct.w1_slave* %0, %struct.w1_slave** %3, align 8
  store %struct.w1_f1C_data* null, %struct.w1_f1C_data** %4, align 8
  %5 = load i64, i64* @w1_enable_crccheck, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %19

7:                                                ; preds = %1
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.w1_f1C_data* @kzalloc(i32 4, i32 %8)
  store %struct.w1_f1C_data* %9, %struct.w1_f1C_data** %4, align 8
  %10 = load %struct.w1_f1C_data*, %struct.w1_f1C_data** %4, align 8
  %11 = icmp ne %struct.w1_f1C_data* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %20

15:                                               ; preds = %7
  %16 = load %struct.w1_f1C_data*, %struct.w1_f1C_data** %4, align 8
  %17 = load %struct.w1_slave*, %struct.w1_slave** %3, align 8
  %18 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %17, i32 0, i32 0
  store %struct.w1_f1C_data* %16, %struct.w1_f1C_data** %18, align 8
  br label %19

19:                                               ; preds = %15, %1
  store i32 0, i32* %2, align 4
  br label %20

20:                                               ; preds = %19, %12
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local %struct.w1_f1C_data* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
