; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_transport.c_transport_alloc_session.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_transport.c_transport_alloc_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_session = type { i32 }

@se_sess_cache = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Unable to allocate struct se_session from se_sess_cache\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.se_session* @transport_alloc_session(i32 %0) #0 {
  %2 = alloca %struct.se_session*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.se_session*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @se_sess_cache, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.se_session* @kmem_cache_zalloc(i32 %6, i32 %7)
  store %struct.se_session* %8, %struct.se_session** %4, align 8
  %9 = load %struct.se_session*, %struct.se_session** %4, align 8
  %10 = icmp ne %struct.se_session* %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = call i32 @pr_err(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.se_session* @ERR_PTR(i32 %14)
  store %struct.se_session* %15, %struct.se_session** %2, align 8
  br label %32

16:                                               ; preds = %1
  %17 = load %struct.se_session*, %struct.se_session** %4, align 8
  %18 = call i32 @transport_init_session(%struct.se_session* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load i32, i32* @se_sess_cache, align 4
  %23 = load %struct.se_session*, %struct.se_session** %4, align 8
  %24 = call i32 @kmem_cache_free(i32 %22, %struct.se_session* %23)
  %25 = load i32, i32* %5, align 4
  %26 = call %struct.se_session* @ERR_PTR(i32 %25)
  store %struct.se_session* %26, %struct.se_session** %2, align 8
  br label %32

27:                                               ; preds = %16
  %28 = load i32, i32* %3, align 4
  %29 = load %struct.se_session*, %struct.se_session** %4, align 8
  %30 = getelementptr inbounds %struct.se_session, %struct.se_session* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.se_session*, %struct.se_session** %4, align 8
  store %struct.se_session* %31, %struct.se_session** %2, align 8
  br label %32

32:                                               ; preds = %27, %21, %11
  %33 = load %struct.se_session*, %struct.se_session** %2, align 8
  ret %struct.se_session* %33
}

declare dso_local %struct.se_session* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.se_session* @ERR_PTR(i32) #1

declare dso_local i32 @transport_init_session(%struct.se_session*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.se_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
