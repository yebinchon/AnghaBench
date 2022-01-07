; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_transport.c_transport_init_session_tags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_transport.c_transport_init_session_tags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_session = type { i32 }

@.str = private unnamed_addr constant [73 x i8] c"init_session_tags called with percpu-ida tag_num: %u, but zero tag_size\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [73 x i8] c"init_session_tags called with percpu-ida tag_size: %u, but zero tag_num\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.se_session* (i32, i32, i32)* @transport_init_session_tags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.se_session* @transport_init_session_tags(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.se_session*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.se_session*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @pr_err(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.se_session* @ERR_PTR(i32 %19)
  store %struct.se_session* %20, %struct.se_session** %4, align 8
  br label %56

21:                                               ; preds = %12, %3
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @pr_err(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  %32 = call %struct.se_session* @ERR_PTR(i32 %31)
  store %struct.se_session* %32, %struct.se_session** %4, align 8
  br label %56

33:                                               ; preds = %24, %21
  %34 = load i32, i32* %7, align 4
  %35 = call %struct.se_session* @transport_alloc_session(i32 %34)
  store %struct.se_session* %35, %struct.se_session** %8, align 8
  %36 = load %struct.se_session*, %struct.se_session** %8, align 8
  %37 = call i64 @IS_ERR(%struct.se_session* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load %struct.se_session*, %struct.se_session** %8, align 8
  store %struct.se_session* %40, %struct.se_session** %4, align 8
  br label %56

41:                                               ; preds = %33
  %42 = load %struct.se_session*, %struct.se_session** %8, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @transport_alloc_session_tags(%struct.se_session* %42, i32 %43, i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %41
  %49 = load %struct.se_session*, %struct.se_session** %8, align 8
  %50 = call i32 @transport_free_session(%struct.se_session* %49)
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  %53 = call %struct.se_session* @ERR_PTR(i32 %52)
  store %struct.se_session* %53, %struct.se_session** %4, align 8
  br label %56

54:                                               ; preds = %41
  %55 = load %struct.se_session*, %struct.se_session** %8, align 8
  store %struct.se_session* %55, %struct.se_session** %4, align 8
  br label %56

56:                                               ; preds = %54, %48, %39, %27, %15
  %57 = load %struct.se_session*, %struct.se_session** %4, align 8
  ret %struct.se_session* %57
}

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local %struct.se_session* @ERR_PTR(i32) #1

declare dso_local %struct.se_session* @transport_alloc_session(i32) #1

declare dso_local i64 @IS_ERR(%struct.se_session*) #1

declare dso_local i32 @transport_alloc_session_tags(%struct.se_session*, i32, i32) #1

declare dso_local i32 @transport_free_session(%struct.se_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
