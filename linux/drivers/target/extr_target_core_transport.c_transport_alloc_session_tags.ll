; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_transport.c_transport_alloc_session_tags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_transport.c_transport_alloc_session_tags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_session = type { i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_RETRY_MAYFAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Unable to allocate se_sess->sess_cmd_map\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@NUMA_NO_NODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"Unable to init se_sess->sess_tag_pool, tag_num: %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @transport_alloc_session_tags(%struct.se_session* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.se_session*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.se_session* %0, %struct.se_session** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = load i32, i32* @__GFP_RETRY_MAYFAIL, align 4
  %13 = or i32 %11, %12
  %14 = call i32* @kvcalloc(i32 %9, i32 %10, i32 %13)
  %15 = load %struct.se_session*, %struct.se_session** %5, align 8
  %16 = getelementptr inbounds %struct.se_session, %struct.se_session* %15, i32 0, i32 0
  store i32* %14, i32** %16, align 8
  %17 = load %struct.se_session*, %struct.se_session** %5, align 8
  %18 = getelementptr inbounds %struct.se_session, %struct.se_session* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %3
  %22 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %46

25:                                               ; preds = %3
  %26 = load %struct.se_session*, %struct.se_session** %5, align 8
  %27 = getelementptr inbounds %struct.se_session, %struct.se_session* %26, i32 0, i32 1
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = load i32, i32* @NUMA_NO_NODE, align 4
  %31 = call i32 @sbitmap_queue_init_node(i32* %27, i32 %28, i32 -1, i32 0, i32 %29, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %25
  %35 = load i32, i32* %6, align 4
  %36 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load %struct.se_session*, %struct.se_session** %5, align 8
  %38 = getelementptr inbounds %struct.se_session, %struct.se_session* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @kvfree(i32* %39)
  %41 = load %struct.se_session*, %struct.se_session** %5, align 8
  %42 = getelementptr inbounds %struct.se_session, %struct.se_session* %41, i32 0, i32 0
  store i32* null, i32** %42, align 8
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %46

45:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %34, %21
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32* @kvcalloc(i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @sbitmap_queue_init_node(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @kvfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
