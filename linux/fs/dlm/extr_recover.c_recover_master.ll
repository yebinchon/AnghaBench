; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_recover.c_recover_master.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_recover.c_recover_master.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_rsb = type { i32, i64, %struct.dlm_ls* }
%struct.dlm_ls = type { i32 }

@RSB_NEW_MASTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_rsb*, i32*)* @recover_master to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recover_master(%struct.dlm_rsb* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dlm_rsb*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.dlm_ls*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dlm_rsb* %0, %struct.dlm_rsb** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.dlm_rsb*, %struct.dlm_rsb** %4, align 8
  %12 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %11, i32 0, i32 2
  %13 = load %struct.dlm_ls*, %struct.dlm_ls** %12, align 8
  store %struct.dlm_ls* %13, %struct.dlm_ls** %6, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.dlm_rsb*, %struct.dlm_rsb** %4, align 8
  %15 = call i64 @is_master(%struct.dlm_rsb* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %62

18:                                               ; preds = %2
  %19 = load %struct.dlm_ls*, %struct.dlm_ls** %6, align 8
  %20 = load %struct.dlm_rsb*, %struct.dlm_rsb** %4, align 8
  %21 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @dlm_is_removed(%struct.dlm_ls* %19, i64 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %18
  %27 = load %struct.dlm_rsb*, %struct.dlm_rsb** %4, align 8
  %28 = load i32, i32* @RSB_NEW_MASTER, align 4
  %29 = call i32 @rsb_flag(%struct.dlm_rsb* %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %62

32:                                               ; preds = %26, %18
  %33 = call i32 (...) @dlm_our_nodeid()
  store i32 %33, i32* %7, align 4
  %34 = load %struct.dlm_rsb*, %struct.dlm_rsb** %4, align 8
  %35 = call i32 @dlm_dir_nodeid(%struct.dlm_rsb* %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %32
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.dlm_rsb*, %struct.dlm_rsb** %4, align 8
  %45 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.dlm_rsb*, %struct.dlm_rsb** %4, align 8
  %47 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  br label %48

48:                                               ; preds = %42, %39
  %49 = load %struct.dlm_rsb*, %struct.dlm_rsb** %4, align 8
  %50 = call i32 @set_new_master(%struct.dlm_rsb* %49)
  store i32 0, i32* %10, align 4
  br label %57

51:                                               ; preds = %32
  %52 = load %struct.dlm_rsb*, %struct.dlm_rsb** %4, align 8
  %53 = call i32 @recover_idr_add(%struct.dlm_rsb* %52)
  %54 = load %struct.dlm_rsb*, %struct.dlm_rsb** %4, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @dlm_send_rcom_lookup(%struct.dlm_rsb* %54, i32 %55)
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %51, %48
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* %58, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %58, align 4
  %61 = load i32, i32* %10, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %57, %31, %17
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i64 @is_master(%struct.dlm_rsb*) #1

declare dso_local i32 @dlm_is_removed(%struct.dlm_ls*, i64) #1

declare dso_local i32 @rsb_flag(%struct.dlm_rsb*, i32) #1

declare dso_local i32 @dlm_our_nodeid(...) #1

declare dso_local i32 @dlm_dir_nodeid(%struct.dlm_rsb*) #1

declare dso_local i32 @set_new_master(%struct.dlm_rsb*) #1

declare dso_local i32 @recover_idr_add(%struct.dlm_rsb*) #1

declare dso_local i32 @dlm_send_rcom_lookup(%struct.dlm_rsb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
