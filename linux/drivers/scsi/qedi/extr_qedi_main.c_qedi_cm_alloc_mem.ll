; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_cm_alloc_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_cm_alloc_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedi_ctx = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@QEDI_LOCAL_PORT_RANGE = common dso_local global i32 0, align 4
@QEDI_LOCAL_PORT_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qedi_ctx*)* @qedi_cm_alloc_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedi_cm_alloc_mem(%struct.qedi_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qedi_ctx*, align 8
  %4 = alloca i32, align 4
  store %struct.qedi_ctx* %0, %struct.qedi_ctx** %3, align 8
  %5 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %6 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = sext i32 %7 to i64
  %9 = mul i64 %8, 8
  %10 = trunc i64 %9 to i32
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i32 @kzalloc(i32 %10, i32 %11)
  %13 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 4
  %15 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %16 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %39

22:                                               ; preds = %1
  %23 = call i32 (...) @prandom_u32()
  %24 = load i32, i32* @QEDI_LOCAL_PORT_RANGE, align 4
  %25 = srem i32 %23, %24
  store i32 %25, i32* %4, align 4
  %26 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %27 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %26, i32 0, i32 1
  %28 = load i32, i32* @QEDI_LOCAL_PORT_RANGE, align 4
  %29 = load i32, i32* @QEDI_LOCAL_PORT_MIN, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i64 @qedi_init_id_tbl(i32* %27, i32 %28, i32 %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %22
  %34 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %35 = call i32 @qedi_cm_free_mem(%struct.qedi_ctx* %34)
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %39

38:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %33, %19
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i32 @prandom_u32(...) #1

declare dso_local i64 @qedi_init_id_tbl(i32*, i32, i32, i32) #1

declare dso_local i32 @qedi_cm_free_mem(%struct.qedi_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
