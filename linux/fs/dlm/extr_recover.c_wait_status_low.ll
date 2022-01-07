; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_recover.c_wait_status_low.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_recover.c_wait_status_low.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { i32, %struct.dlm_rcom* }
%struct.dlm_rcom = type { i32 }

@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_ls*, i32, i32)* @wait_status_low to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_status_low(%struct.dlm_ls* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dlm_ls*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dlm_rcom*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dlm_ls* %0, %struct.dlm_ls** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %12 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %11, i32 0, i32 1
  %13 = load %struct.dlm_rcom*, %struct.dlm_rcom** %12, align 8
  store %struct.dlm_rcom* %13, %struct.dlm_rcom** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %14 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %15 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %10, align 4
  br label %17

17:                                               ; preds = %46, %3
  %18 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %19 = call i64 @dlm_recovery_stopped(%struct.dlm_ls* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32, i32* @EINTR, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %8, align 4
  br label %50

24:                                               ; preds = %17
  %25 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @dlm_rcom_status(%struct.dlm_ls* %25, i32 %26, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %49

32:                                               ; preds = %24
  %33 = load %struct.dlm_rcom*, %struct.dlm_rcom** %7, align 8
  %34 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %5, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %49

40:                                               ; preds = %32
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %41, 1000
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %44, 20
  store i32 %45, i32* %9, align 4
  br label %46

46:                                               ; preds = %43, %40
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @msleep(i32 %47)
  br label %17

49:                                               ; preds = %39, %31
  br label %50

50:                                               ; preds = %49, %21
  %51 = load i32, i32* %8, align 4
  ret i32 %51
}

declare dso_local i64 @dlm_recovery_stopped(%struct.dlm_ls*) #1

declare dso_local i32 @dlm_rcom_status(%struct.dlm_ls*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
