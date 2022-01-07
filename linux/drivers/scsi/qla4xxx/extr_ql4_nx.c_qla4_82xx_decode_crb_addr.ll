; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_nx.c_qla4_82xx_decode_crb_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_nx.c_qla4_82xx_decode_crb_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@qla4_8xxx_crb_table_initialized = common dso_local global i32 0, align 4
@ADDR_ERROR = common dso_local global i64 0, align 8
@MAX_CRB_XFORM = common dso_local global i32 0, align 4
@crb_addr_xform = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @qla4_82xx_decode_crb_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @qla4_82xx_decode_crb_addr(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %8 = load i32, i32* @qla4_8xxx_crb_table_initialized, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = call i32 (...) @qla4_82xx_crb_addr_transform_setup()
  br label %12

12:                                               ; preds = %10, %1
  %13 = load i64, i64* @ADDR_ERROR, align 8
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %3, align 8
  %15 = and i64 %14, 4293918720
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %3, align 8
  %17 = and i64 %16, 1048575
  store i64 %17, i64* %6, align 8
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %35, %12
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @MAX_CRB_XFORM, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %38

22:                                               ; preds = %18
  %23 = load i64*, i64** @crb_addr_xform, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %5, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %22
  %31 = load i32, i32* %4, align 4
  %32 = shl i32 %31, 20
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %7, align 8
  br label %38

34:                                               ; preds = %22
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %18

38:                                               ; preds = %30, %18
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* @ADDR_ERROR, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i64, i64* %7, align 8
  store i64 %43, i64* %2, align 8
  br label %48

44:                                               ; preds = %38
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* %6, align 8
  %47 = add i64 %45, %46
  store i64 %47, i64* %2, align 8
  br label %48

48:                                               ; preds = %44, %42
  %49 = load i64, i64* %2, align 8
  ret i64 %49
}

declare dso_local i32 @qla4_82xx_crb_addr_transform_setup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
