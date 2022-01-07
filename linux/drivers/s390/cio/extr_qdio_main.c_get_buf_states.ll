; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_main.c_get_buf_states.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_main.c_get_buf_states.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_q = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@SLSB_OWNER_CU = common dso_local global i8 0, align 1
@SLSB_P_OUTPUT_PENDING = common dso_local global i8 0, align 1
@SLSB_P_OUTPUT_EMPTY = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qdio_q*, i32, i8*, i32, i32, i32)* @get_buf_states to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_buf_states(%struct.qdio_q* %0, i32 %1, i8* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.qdio_q*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  store %struct.qdio_q* %0, %struct.qdio_q** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i8 0, i8* %14, align 1
  store i32 1, i32* %15, align 4
  %16 = load %struct.qdio_q*, %struct.qdio_q** %8, align 8
  %17 = call i64 @is_qebsm(%struct.qdio_q* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %6
  %20 = load %struct.qdio_q*, %struct.qdio_q** %8, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %12, align 4
  %25 = call i32 @qdio_do_eqbs(%struct.qdio_q* %20, i8* %21, i32 %22, i32 %23, i32 %24)
  store i32 %25, i32* %7, align 4
  br label %106

26:                                               ; preds = %6
  %27 = load %struct.qdio_q*, %struct.qdio_q** %8, align 8
  %28 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load i8, i8* %33, align 1
  store i8 %34, i8* %14, align 1
  %35 = load i8, i8* %14, align 1
  %36 = zext i8 %35 to i32
  %37 = load i8, i8* @SLSB_OWNER_CU, align 1
  %38 = zext i8 %37 to i32
  %39 = and i32 %36, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %26
  br label %102

42:                                               ; preds = %26
  %43 = load i32, i32* %13, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %42
  %46 = load i8, i8* %14, align 1
  %47 = zext i8 %46 to i32
  %48 = load i8, i8* @SLSB_P_OUTPUT_PENDING, align 1
  %49 = zext i8 %48 to i32
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i8, i8* @SLSB_P_OUTPUT_EMPTY, align 1
  store i8 %52, i8* %14, align 1
  br label %53

53:                                               ; preds = %51, %45, %42
  br label %54

54:                                               ; preds = %98, %53
  %55 = load i32, i32* %15, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp ult i32 %55, %56
  br i1 %57, label %58, label %101

58:                                               ; preds = %54
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @next_buf(i32 %59)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %83

63:                                               ; preds = %58
  %64 = load %struct.qdio_q*, %struct.qdio_q** %8, align 8
  %65 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = load i8, i8* @SLSB_P_OUTPUT_PENDING, align 1
  %74 = zext i8 %73 to i32
  %75 = icmp eq i32 %72, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %63
  %77 = load i8, i8* %14, align 1
  %78 = zext i8 %77 to i32
  %79 = load i8, i8* @SLSB_P_OUTPUT_EMPTY, align 1
  %80 = zext i8 %79 to i32
  %81 = icmp eq i32 %78, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  br label %98

83:                                               ; preds = %76, %63, %58
  %84 = load %struct.qdio_q*, %struct.qdio_q** %8, align 8
  %85 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = load i32, i32* %9, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  %93 = load i8, i8* %14, align 1
  %94 = zext i8 %93 to i32
  %95 = icmp ne i32 %92, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %83
  br label %101

97:                                               ; preds = %83
  br label %98

98:                                               ; preds = %97, %82
  %99 = load i32, i32* %15, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %15, align 4
  br label %54

101:                                              ; preds = %96, %54
  br label %102

102:                                              ; preds = %101, %41
  %103 = load i8, i8* %14, align 1
  %104 = load i8*, i8** %10, align 8
  store i8 %103, i8* %104, align 1
  %105 = load i32, i32* %15, align 4
  store i32 %105, i32* %7, align 4
  br label %106

106:                                              ; preds = %102, %19
  %107 = load i32, i32* %7, align 4
  ret i32 %107
}

declare dso_local i64 @is_qebsm(%struct.qdio_q*) #1

declare dso_local i32 @qdio_do_eqbs(%struct.qdio_q*, i8*, i32, i32, i32) #1

declare dso_local i32 @next_buf(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
