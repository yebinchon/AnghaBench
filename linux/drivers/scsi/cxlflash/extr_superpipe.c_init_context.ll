; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/cxlflash/extr_superpipe.c_init_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/cxlflash/extr_superpipe.c_init_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctx_info = type { i32, i32, i32, i32, i32, %struct.file*, %struct.cxlflash_cfg*, i8*, i32, i32, i32, i32*, i32 }
%struct.cxlflash_cfg = type { %struct.afu* }
%struct.afu = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.file = type { i32 }

@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctx_info*, %struct.cxlflash_cfg*, i8*, i32, %struct.file*, i32, i32)* @init_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_context(%struct.ctx_info* %0, %struct.cxlflash_cfg* %1, i8* %2, i32 %3, %struct.file* %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.ctx_info*, align 8
  %9 = alloca %struct.cxlflash_cfg*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.file*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.afu*, align 8
  store %struct.ctx_info* %0, %struct.ctx_info** %8, align 8
  store %struct.cxlflash_cfg* %1, %struct.cxlflash_cfg** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.file* %4, %struct.file** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %16 = load %struct.cxlflash_cfg*, %struct.cxlflash_cfg** %9, align 8
  %17 = getelementptr inbounds %struct.cxlflash_cfg, %struct.cxlflash_cfg* %16, i32 0, i32 0
  %18 = load %struct.afu*, %struct.afu** %17, align 8
  store %struct.afu* %18, %struct.afu** %15, align 8
  %19 = load i32, i32* %13, align 4
  %20 = load %struct.ctx_info*, %struct.ctx_info** %8, align 8
  %21 = getelementptr inbounds %struct.ctx_info, %struct.ctx_info* %20, i32 0, i32 12
  store i32 %19, i32* %21, align 8
  %22 = load %struct.afu*, %struct.afu** %15, align 8
  %23 = getelementptr inbounds %struct.afu, %struct.afu* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = load i32, i32* %11, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load %struct.ctx_info*, %struct.ctx_info** %8, align 8
  %32 = getelementptr inbounds %struct.ctx_info, %struct.ctx_info* %31, i32 0, i32 11
  store i32* %30, i32** %32, align 8
  %33 = load %struct.ctx_info*, %struct.ctx_info** %8, align 8
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @ENCODE_CTXID(%struct.ctx_info* %33, i32 %34)
  %36 = load %struct.ctx_info*, %struct.ctx_info** %8, align 8
  %37 = getelementptr inbounds %struct.ctx_info, %struct.ctx_info* %36, i32 0, i32 10
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* %14, align 4
  %39 = load %struct.ctx_info*, %struct.ctx_info** %8, align 8
  %40 = getelementptr inbounds %struct.ctx_info, %struct.ctx_info* %39, i32 0, i32 9
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @current, align 4
  %42 = call i32 @task_tgid_nr(i32 %41)
  %43 = load %struct.ctx_info*, %struct.ctx_info** %8, align 8
  %44 = getelementptr inbounds %struct.ctx_info, %struct.ctx_info* %43, i32 0, i32 8
  store i32 %42, i32* %44, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = load %struct.ctx_info*, %struct.ctx_info** %8, align 8
  %47 = getelementptr inbounds %struct.ctx_info, %struct.ctx_info* %46, i32 0, i32 7
  store i8* %45, i8** %47, align 8
  %48 = load %struct.cxlflash_cfg*, %struct.cxlflash_cfg** %9, align 8
  %49 = load %struct.ctx_info*, %struct.ctx_info** %8, align 8
  %50 = getelementptr inbounds %struct.ctx_info, %struct.ctx_info* %49, i32 0, i32 6
  store %struct.cxlflash_cfg* %48, %struct.cxlflash_cfg** %50, align 8
  %51 = load %struct.file*, %struct.file** %12, align 8
  %52 = load %struct.ctx_info*, %struct.ctx_info** %8, align 8
  %53 = getelementptr inbounds %struct.ctx_info, %struct.ctx_info* %52, i32 0, i32 5
  store %struct.file* %51, %struct.file** %53, align 8
  %54 = load %struct.ctx_info*, %struct.ctx_info** %8, align 8
  %55 = getelementptr inbounds %struct.ctx_info, %struct.ctx_info* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  %56 = load %struct.ctx_info*, %struct.ctx_info** %8, align 8
  %57 = getelementptr inbounds %struct.ctx_info, %struct.ctx_info* %56, i32 0, i32 4
  %58 = call i32 @mutex_init(i32* %57)
  %59 = load %struct.ctx_info*, %struct.ctx_info** %8, align 8
  %60 = getelementptr inbounds %struct.ctx_info, %struct.ctx_info* %59, i32 0, i32 3
  %61 = call i32 @kref_init(i32* %60)
  %62 = load %struct.ctx_info*, %struct.ctx_info** %8, align 8
  %63 = getelementptr inbounds %struct.ctx_info, %struct.ctx_info* %62, i32 0, i32 2
  %64 = call i32 @INIT_LIST_HEAD(i32* %63)
  %65 = load %struct.ctx_info*, %struct.ctx_info** %8, align 8
  %66 = getelementptr inbounds %struct.ctx_info, %struct.ctx_info* %65, i32 0, i32 1
  %67 = call i32 @INIT_LIST_HEAD(i32* %66)
  ret void
}

declare dso_local i32 @ENCODE_CTXID(%struct.ctx_info*, i32) #1

declare dso_local i32 @task_tgid_nr(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
