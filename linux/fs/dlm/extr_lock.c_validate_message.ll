; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_validate_message.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_validate_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_lkb = type { i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.dlm_message = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"ignore invalid message %d from %d %x %x %x %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_lkb*, %struct.dlm_message*)* @validate_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_message(%struct.dlm_lkb* %0, %struct.dlm_message* %1) #0 {
  %3 = alloca %struct.dlm_lkb*, align 8
  %4 = alloca %struct.dlm_message*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dlm_lkb* %0, %struct.dlm_lkb** %3, align 8
  store %struct.dlm_message* %1, %struct.dlm_message** %4, align 8
  %7 = load %struct.dlm_message*, %struct.dlm_message** %4, align 8
  %8 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %11 = load %struct.dlm_message*, %struct.dlm_message** %4, align 8
  %12 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %65 [
    i32 133, label %14
    i32 129, label %14
    i32 135, label %14
    i32 132, label %28
    i32 128, label %28
    i32 134, label %28
    i32 131, label %28
    i32 136, label %28
    i32 130, label %42
  ]

14:                                               ; preds = %2, %2, %2
  %15 = load %struct.dlm_lkb*, %struct.dlm_lkb** %3, align 8
  %16 = call i32 @is_master_copy(%struct.dlm_lkb* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = load %struct.dlm_lkb*, %struct.dlm_lkb** %3, align 8
  %20 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18, %14
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %24, %18
  br label %68

28:                                               ; preds = %2, %2, %2, %2, %2
  %29 = load %struct.dlm_lkb*, %struct.dlm_lkb** %3, align 8
  %30 = call i32 @is_process_copy(%struct.dlm_lkb* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load %struct.dlm_lkb*, %struct.dlm_lkb** %3, align 8
  %34 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32, %28
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %38, %32
  br label %68

42:                                               ; preds = %2
  %43 = load %struct.dlm_lkb*, %struct.dlm_lkb** %3, align 8
  %44 = call i32 @is_process_copy(%struct.dlm_lkb* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  br label %64

49:                                               ; preds = %42
  %50 = load %struct.dlm_lkb*, %struct.dlm_lkb** %3, align 8
  %51 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, -1
  br i1 %53, label %54, label %63

54:                                               ; preds = %49
  %55 = load %struct.dlm_lkb*, %struct.dlm_lkb** %3, align 8
  %56 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %60, %54, %49
  br label %64

64:                                               ; preds = %63, %46
  br label %68

65:                                               ; preds = %2
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %65, %64, %41, %27
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %94

71:                                               ; preds = %68
  %72 = load %struct.dlm_lkb*, %struct.dlm_lkb** %3, align 8
  %73 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %72, i32 0, i32 4
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.dlm_message*, %struct.dlm_message** %4, align 8
  %78 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %5, align 4
  %81 = load %struct.dlm_lkb*, %struct.dlm_lkb** %3, align 8
  %82 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.dlm_lkb*, %struct.dlm_lkb** %3, align 8
  %85 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.dlm_lkb*, %struct.dlm_lkb** %3, align 8
  %88 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.dlm_lkb*, %struct.dlm_lkb** %3, align 8
  %91 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @log_error(i32 %76, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %79, i32 %80, i32 %83, i32 %86, i32 %89, i32 %92)
  br label %94

94:                                               ; preds = %71, %68
  %95 = load i32, i32* %6, align 4
  ret i32 %95
}

declare dso_local i32 @is_master_copy(%struct.dlm_lkb*) #1

declare dso_local i32 @is_process_copy(%struct.dlm_lkb*) #1

declare dso_local i32 @log_error(i32, i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
