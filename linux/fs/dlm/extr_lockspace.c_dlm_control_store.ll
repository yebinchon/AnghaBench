; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_lockspace.c_dlm_control_store.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_lockspace.c_dlm_control_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_ls*, i8*, i64)* @dlm_control_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlm_control_store(%struct.dlm_ls* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dlm_ls*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dlm_ls* %0, %struct.dlm_ls** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %8, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @kstrtoint(i8* %13, i32 0, i32* %9)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %4, align 4
  br label %44

19:                                               ; preds = %3
  %20 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %21 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.dlm_ls* @dlm_find_lockspace_local(i32 %22)
  store %struct.dlm_ls* %23, %struct.dlm_ls** %5, align 8
  %24 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %25 = icmp ne %struct.dlm_ls* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %44

29:                                               ; preds = %19
  %30 = load i32, i32* %9, align 4
  switch i32 %30, label %37 [
    i32 0, label %31
    i32 1, label %34
  ]

31:                                               ; preds = %29
  %32 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %33 = call i32 @dlm_ls_stop(%struct.dlm_ls* %32)
  br label %40

34:                                               ; preds = %29
  %35 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %36 = call i32 @dlm_ls_start(%struct.dlm_ls* %35)
  br label %40

37:                                               ; preds = %29
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %37, %34, %31
  %41 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %42 = call i32 @dlm_put_lockspace(%struct.dlm_ls* %41)
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %40, %26, %17
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @kstrtoint(i8*, i32, i32*) #1

declare dso_local %struct.dlm_ls* @dlm_find_lockspace_local(i32) #1

declare dso_local i32 @dlm_ls_stop(%struct.dlm_ls*) #1

declare dso_local i32 @dlm_ls_start(%struct.dlm_ls*) #1

declare dso_local i32 @dlm_put_lockspace(%struct.dlm_ls*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
