; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_vfio_ap_ops.c_vfio_ap_matrix_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_vfio_ap_ops.c_vfio_ap_matrix_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ap_config_info = type { i32, i32, i64 }
%struct.ap_matrix = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ap_config_info*, %struct.ap_matrix*)* @vfio_ap_matrix_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfio_ap_matrix_init(%struct.ap_config_info* %0, %struct.ap_matrix* %1) #0 {
  %3 = alloca %struct.ap_config_info*, align 8
  %4 = alloca %struct.ap_matrix*, align 8
  store %struct.ap_config_info* %0, %struct.ap_config_info** %3, align 8
  store %struct.ap_matrix* %1, %struct.ap_matrix** %4, align 8
  %5 = load %struct.ap_config_info*, %struct.ap_config_info** %3, align 8
  %6 = getelementptr inbounds %struct.ap_config_info, %struct.ap_config_info* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.ap_config_info*, %struct.ap_config_info** %3, align 8
  %11 = getelementptr inbounds %struct.ap_config_info, %struct.ap_config_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  br label %14

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %13, %9
  %15 = phi i32 [ %12, %9 ], [ 63, %13 ]
  %16 = load %struct.ap_matrix*, %struct.ap_matrix** %4, align 8
  %17 = getelementptr inbounds %struct.ap_matrix, %struct.ap_matrix* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.ap_config_info*, %struct.ap_config_info** %3, align 8
  %19 = getelementptr inbounds %struct.ap_config_info, %struct.ap_config_info* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %14
  %23 = load %struct.ap_config_info*, %struct.ap_config_info** %3, align 8
  %24 = getelementptr inbounds %struct.ap_config_info, %struct.ap_config_info* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  br label %27

26:                                               ; preds = %14
  br label %27

27:                                               ; preds = %26, %22
  %28 = phi i32 [ %25, %22 ], [ 15, %26 ]
  %29 = load %struct.ap_matrix*, %struct.ap_matrix** %4, align 8
  %30 = getelementptr inbounds %struct.ap_matrix, %struct.ap_matrix* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.ap_config_info*, %struct.ap_config_info** %3, align 8
  %32 = getelementptr inbounds %struct.ap_config_info, %struct.ap_config_info* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %27
  %36 = load %struct.ap_config_info*, %struct.ap_config_info** %3, align 8
  %37 = getelementptr inbounds %struct.ap_config_info, %struct.ap_config_info* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  br label %40

39:                                               ; preds = %27
  br label %40

40:                                               ; preds = %39, %35
  %41 = phi i32 [ %38, %35 ], [ 15, %39 ]
  %42 = load %struct.ap_matrix*, %struct.ap_matrix** %4, align 8
  %43 = getelementptr inbounds %struct.ap_matrix, %struct.ap_matrix* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
