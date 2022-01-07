; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_transport.c_rtsx_add_sg_tbl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_transport.c_rtsx_add_sg_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32, i64 }

@RTSX_SG_END = common dso_local global i32 0, align 4
@HOST_SG_TBL_BUF_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtsx_chip*, i32, i32, i32)* @rtsx_add_sg_tbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtsx_add_sg_tbl(%struct.rtsx_chip* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.rtsx_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %14 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i32*
  store i32* %16, i32** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %17

17:                                               ; preds = %59, %4
  %18 = load i32, i32* %7, align 4
  %19 = icmp sgt i32 %18, 524288
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  store i32 524288, i32* %11, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @RTSX_SG_END, align 4
  %23 = xor i32 %22, -1
  %24 = and i32 %21, %23
  store i32 %24, i32* %12, align 4
  br label %28

25:                                               ; preds = %17
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %12, align 4
  br label %28

28:                                               ; preds = %25, %20
  %29 = load i32, i32* %6, align 4
  %30 = shl i32 %29, 32
  %31 = load i32, i32* %11, align 4
  %32 = shl i32 %31, 12
  %33 = or i32 %30, %32
  %34 = load i32, i32* %12, align 4
  %35 = or i32 %33, %34
  store i32 %35, i32* %10, align 4
  %36 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %37 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @HOST_SG_TBL_BUF_LEN, align 4
  %40 = sdiv i32 %39, 8
  %41 = icmp slt i32 %38, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %28
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @cpu_to_le64(i32 %43)
  %45 = load i32*, i32** %9, align 8
  %46 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %47 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 8
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i32, i32* %45, i64 %50
  store i32 %44, i32* %51, align 4
  br label %52

52:                                               ; preds = %42, %28
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %7, align 4
  %55 = sub nsw i32 %54, %53
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %52
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %17, label %62

62:                                               ; preds = %59
  ret void
}

declare dso_local i32 @cpu_to_le64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
