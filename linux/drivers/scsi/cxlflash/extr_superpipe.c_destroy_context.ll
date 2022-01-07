; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/cxlflash/extr_superpipe.c_destroy_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/cxlflash/extr_superpipe.c_destroy_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxlflash_cfg = type { %struct.afu* }
%struct.afu = type { i64 }
%struct.ctx_info = type { %struct.ctx_info*, %struct.ctx_info*, i64, %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cxlflash_cfg*, %struct.ctx_info*)* @destroy_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_context(%struct.cxlflash_cfg* %0, %struct.ctx_info* %1) #0 {
  %3 = alloca %struct.cxlflash_cfg*, align 8
  %4 = alloca %struct.ctx_info*, align 8
  %5 = alloca %struct.afu*, align 8
  store %struct.cxlflash_cfg* %0, %struct.cxlflash_cfg** %3, align 8
  store %struct.ctx_info* %1, %struct.ctx_info** %4, align 8
  %6 = load %struct.cxlflash_cfg*, %struct.cxlflash_cfg** %3, align 8
  %7 = getelementptr inbounds %struct.cxlflash_cfg, %struct.cxlflash_cfg* %6, i32 0, i32 0
  %8 = load %struct.afu*, %struct.afu** %7, align 8
  store %struct.afu* %8, %struct.afu** %5, align 8
  %9 = load %struct.ctx_info*, %struct.ctx_info** %4, align 8
  %10 = getelementptr inbounds %struct.ctx_info, %struct.ctx_info* %9, i32 0, i32 5
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %47

13:                                               ; preds = %2
  %14 = load %struct.ctx_info*, %struct.ctx_info** %4, align 8
  %15 = getelementptr inbounds %struct.ctx_info, %struct.ctx_info* %14, i32 0, i32 4
  %16 = call i32 @list_empty(i32* %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @WARN_ON(i32 %19)
  %21 = load %struct.afu*, %struct.afu** %5, align 8
  %22 = getelementptr inbounds %struct.afu, %struct.afu* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %46

25:                                               ; preds = %13
  %26 = load %struct.ctx_info*, %struct.ctx_info** %4, align 8
  %27 = getelementptr inbounds %struct.ctx_info, %struct.ctx_info* %26, i32 0, i32 3
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = icmp ne %struct.TYPE_2__* %28, null
  br i1 %29, label %30, label %46

30:                                               ; preds = %25
  %31 = load %struct.ctx_info*, %struct.ctx_info** %4, align 8
  %32 = getelementptr inbounds %struct.ctx_info, %struct.ctx_info* %31, i32 0, i32 3
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = call i32 @writeq_be(i32 0, i32* %34)
  %36 = load %struct.ctx_info*, %struct.ctx_info** %4, align 8
  %37 = getelementptr inbounds %struct.ctx_info, %struct.ctx_info* %36, i32 0, i32 3
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = call i32 @writeq_be(i32 0, i32* %39)
  %41 = load %struct.ctx_info*, %struct.ctx_info** %4, align 8
  %42 = getelementptr inbounds %struct.ctx_info, %struct.ctx_info* %41, i32 0, i32 3
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = call i32 @writeq_be(i32 0, i32* %44)
  br label %46

46:                                               ; preds = %30, %25, %13
  br label %47

47:                                               ; preds = %46, %2
  %48 = load %struct.ctx_info*, %struct.ctx_info** %4, align 8
  %49 = getelementptr inbounds %struct.ctx_info, %struct.ctx_info* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = trunc i64 %50 to i32
  %52 = call i32 @free_page(i32 %51)
  %53 = load %struct.ctx_info*, %struct.ctx_info** %4, align 8
  %54 = getelementptr inbounds %struct.ctx_info, %struct.ctx_info* %53, i32 0, i32 1
  %55 = load %struct.ctx_info*, %struct.ctx_info** %54, align 8
  %56 = call i32 @kfree(%struct.ctx_info* %55)
  %57 = load %struct.ctx_info*, %struct.ctx_info** %4, align 8
  %58 = getelementptr inbounds %struct.ctx_info, %struct.ctx_info* %57, i32 0, i32 0
  %59 = load %struct.ctx_info*, %struct.ctx_info** %58, align 8
  %60 = call i32 @kfree(%struct.ctx_info* %59)
  %61 = load %struct.ctx_info*, %struct.ctx_info** %4, align 8
  %62 = call i32 @kfree(%struct.ctx_info* %61)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @writeq_be(i32, i32*) #1

declare dso_local i32 @free_page(i32) #1

declare dso_local i32 @kfree(%struct.ctx_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
