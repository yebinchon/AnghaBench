; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtl819x_HTProc.c_TxCountToDataRate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtl819x_HTProc.c_TxCountToDataRate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtllib_device = type { i32 }

@__const.TxCountToDataRate.CCKOFDMRate = private unnamed_addr constant [12 x i32] [i32 2, i32 4, i32 11, i32 22, i32 12, i32 18, i32 24, i32 36, i32 48, i32 72, i32 96, i32 108], align 16
@MCS_DATA_RATE = common dso_local global i32*** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TxCountToDataRate(%struct.rtllib_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtllib_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [12 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rtllib_device* %0, %struct.rtllib_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = bitcast [12 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 bitcast ([12 x i32]* @__const.TxCountToDataRate.CCKOFDMRate to i8*), i64 48, i1 false)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 12
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [12 x i32], [12 x i32]* %6, i64 0, i64 %14
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %3, align 4
  br label %63

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = icmp sge i32 %18, 16
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i32, i32* %5, align 4
  %22 = icmp sle i32 %21, 31
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %48

24:                                               ; preds = %20, %17
  %25 = load i32, i32* %5, align 4
  %26 = icmp sge i32 %25, 32
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32, i32* %5, align 4
  %29 = icmp sle i32 %28, 47
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %47

31:                                               ; preds = %27, %24
  %32 = load i32, i32* %5, align 4
  %33 = icmp sge i32 %32, 48
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i32, i32* %5, align 4
  %36 = icmp sle i32 %35, 63
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 0, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %46

38:                                               ; preds = %34, %31
  %39 = load i32, i32* %5, align 4
  %40 = icmp sge i32 %39, 64
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i32, i32* %5, align 4
  %43 = icmp sle i32 %42, 79
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 1, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %45

45:                                               ; preds = %44, %41, %38
  br label %46

46:                                               ; preds = %45, %37
  br label %47

47:                                               ; preds = %46, %30
  br label %48

48:                                               ; preds = %47, %23
  %49 = load i32***, i32**** @MCS_DATA_RATE, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32**, i32*** %49, i64 %51
  %53 = load i32**, i32*** %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32*, i32** %53, i64 %55
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = and i32 %58, 15
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %48, %12
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
