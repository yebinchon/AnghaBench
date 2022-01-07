; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_misc.c_cifs_aio_ctx_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_misc.c_cifs_aio_ctx_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_aio_ctx = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cifs_aio_ctx* @cifs_aio_ctx_alloc() #0 {
  %1 = alloca %struct.cifs_aio_ctx*, align 8
  %2 = alloca %struct.cifs_aio_ctx*, align 8
  %3 = load i32, i32* @GFP_KERNEL, align 4
  %4 = call %struct.cifs_aio_ctx* @kzalloc(i32 16, i32 %3)
  store %struct.cifs_aio_ctx* %4, %struct.cifs_aio_ctx** %2, align 8
  %5 = load %struct.cifs_aio_ctx*, %struct.cifs_aio_ctx** %2, align 8
  %6 = icmp ne %struct.cifs_aio_ctx* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store %struct.cifs_aio_ctx* null, %struct.cifs_aio_ctx** %1, align 8
  br label %22

8:                                                ; preds = %0
  %9 = load %struct.cifs_aio_ctx*, %struct.cifs_aio_ctx** %2, align 8
  %10 = getelementptr inbounds %struct.cifs_aio_ctx, %struct.cifs_aio_ctx* %9, i32 0, i32 3
  %11 = call i32 @INIT_LIST_HEAD(i32* %10)
  %12 = load %struct.cifs_aio_ctx*, %struct.cifs_aio_ctx** %2, align 8
  %13 = getelementptr inbounds %struct.cifs_aio_ctx, %struct.cifs_aio_ctx* %12, i32 0, i32 2
  %14 = call i32 @mutex_init(i32* %13)
  %15 = load %struct.cifs_aio_ctx*, %struct.cifs_aio_ctx** %2, align 8
  %16 = getelementptr inbounds %struct.cifs_aio_ctx, %struct.cifs_aio_ctx* %15, i32 0, i32 1
  %17 = call i32 @init_completion(i32* %16)
  %18 = load %struct.cifs_aio_ctx*, %struct.cifs_aio_ctx** %2, align 8
  %19 = getelementptr inbounds %struct.cifs_aio_ctx, %struct.cifs_aio_ctx* %18, i32 0, i32 0
  %20 = call i32 @kref_init(i32* %19)
  %21 = load %struct.cifs_aio_ctx*, %struct.cifs_aio_ctx** %2, align 8
  store %struct.cifs_aio_ctx* %21, %struct.cifs_aio_ctx** %1, align 8
  br label %22

22:                                               ; preds = %8, %7
  %23 = load %struct.cifs_aio_ctx*, %struct.cifs_aio_ctx** %1, align 8
  ret %struct.cifs_aio_ctx* %23
}

declare dso_local %struct.cifs_aio_ctx* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @kref_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
