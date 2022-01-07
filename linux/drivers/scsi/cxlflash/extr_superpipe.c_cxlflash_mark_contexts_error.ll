; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/cxlflash/extr_superpipe.c_cxlflash_mark_contexts_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/cxlflash/extr_superpipe.c_cxlflash_mark_contexts_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxlflash_cfg = type { i32, i32, %struct.ctx_info** }
%struct.ctx_info = type { i32, i32, i32*, i32 }

@MAX_CONTEXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxlflash_mark_contexts_error(%struct.cxlflash_cfg* %0) #0 {
  %2 = alloca %struct.cxlflash_cfg*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ctx_info*, align 8
  store %struct.cxlflash_cfg* %0, %struct.cxlflash_cfg** %2, align 8
  store i32 0, i32* %4, align 4
  store %struct.ctx_info* null, %struct.ctx_info** %5, align 8
  %6 = load %struct.cxlflash_cfg*, %struct.cxlflash_cfg** %2, align 8
  %7 = getelementptr inbounds %struct.cxlflash_cfg, %struct.cxlflash_cfg* %6, i32 0, i32 0
  %8 = call i32 @mutex_lock(i32* %7)
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %48, %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @MAX_CONTEXT, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %51

13:                                               ; preds = %9
  %14 = load %struct.cxlflash_cfg*, %struct.cxlflash_cfg** %2, align 8
  %15 = getelementptr inbounds %struct.cxlflash_cfg, %struct.cxlflash_cfg* %14, i32 0, i32 2
  %16 = load %struct.ctx_info**, %struct.ctx_info*** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.ctx_info*, %struct.ctx_info** %16, i64 %18
  %20 = load %struct.ctx_info*, %struct.ctx_info** %19, align 8
  store %struct.ctx_info* %20, %struct.ctx_info** %5, align 8
  %21 = load %struct.ctx_info*, %struct.ctx_info** %5, align 8
  %22 = icmp ne %struct.ctx_info* %21, null
  br i1 %22, label %23, label %47

23:                                               ; preds = %13
  %24 = load %struct.ctx_info*, %struct.ctx_info** %5, align 8
  %25 = getelementptr inbounds %struct.ctx_info, %struct.ctx_info* %24, i32 0, i32 1
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.cxlflash_cfg*, %struct.cxlflash_cfg** %2, align 8
  %28 = getelementptr inbounds %struct.cxlflash_cfg, %struct.cxlflash_cfg* %27, i32 0, i32 2
  %29 = load %struct.ctx_info**, %struct.ctx_info*** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.ctx_info*, %struct.ctx_info** %29, i64 %31
  store %struct.ctx_info* null, %struct.ctx_info** %32, align 8
  %33 = load %struct.ctx_info*, %struct.ctx_info** %5, align 8
  %34 = getelementptr inbounds %struct.ctx_info, %struct.ctx_info* %33, i32 0, i32 3
  %35 = load %struct.cxlflash_cfg*, %struct.cxlflash_cfg** %2, align 8
  %36 = getelementptr inbounds %struct.cxlflash_cfg, %struct.cxlflash_cfg* %35, i32 0, i32 1
  %37 = call i32 @list_add(i32* %34, i32* %36)
  %38 = load %struct.ctx_info*, %struct.ctx_info** %5, align 8
  %39 = getelementptr inbounds %struct.ctx_info, %struct.ctx_info* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = load %struct.ctx_info*, %struct.ctx_info** %5, align 8
  %41 = getelementptr inbounds %struct.ctx_info, %struct.ctx_info* %40, i32 0, i32 2
  store i32* null, i32** %41, align 8
  %42 = load %struct.ctx_info*, %struct.ctx_info** %5, align 8
  %43 = call i32 @unmap_context(%struct.ctx_info* %42)
  %44 = load %struct.ctx_info*, %struct.ctx_info** %5, align 8
  %45 = getelementptr inbounds %struct.ctx_info, %struct.ctx_info* %44, i32 0, i32 1
  %46 = call i32 @mutex_unlock(i32* %45)
  br label %47

47:                                               ; preds = %23, %13
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %3, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %3, align 4
  br label %9

51:                                               ; preds = %9
  %52 = load %struct.cxlflash_cfg*, %struct.cxlflash_cfg** %2, align 8
  %53 = getelementptr inbounds %struct.cxlflash_cfg, %struct.cxlflash_cfg* %52, i32 0, i32 0
  %54 = call i32 @mutex_unlock(i32* %53)
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @unmap_context(%struct.ctx_info*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
