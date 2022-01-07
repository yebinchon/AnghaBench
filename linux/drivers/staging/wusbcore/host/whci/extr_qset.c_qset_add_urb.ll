; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/host/whci/extr_qset.c_qset_add_urb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/host/whci/extr_qset.c_qset_add_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.whc = type { i32 }
%struct.whc_qset = type { i32 }
%struct.urb = type { i32, i64, i64, %struct.whc_urb* }
%struct.whc_urb = type { i32, %struct.urb*, %struct.whc_qset* }
%struct.whc_std = type { i64, i64, i32 }

@urb_dequeue_work = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@QTD_MAX_XFER_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qset_add_urb(%struct.whc* %0, %struct.whc_qset* %1, %struct.urb* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.whc*, align 8
  %7 = alloca %struct.whc_qset*, align 8
  %8 = alloca %struct.urb*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.whc_urb*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.whc_std*, align 8
  %16 = alloca i64, align 8
  store %struct.whc* %0, %struct.whc** %6, align 8
  store %struct.whc_qset* %1, %struct.whc_qset** %7, align 8
  store %struct.urb* %2, %struct.urb** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.urb*, %struct.urb** %8, align 8
  %18 = getelementptr inbounds %struct.urb, %struct.urb* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %11, align 4
  %20 = load %struct.urb*, %struct.urb** %8, align 8
  %21 = getelementptr inbounds %struct.urb, %struct.urb* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %12, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call %struct.whc_urb* @kzalloc(i32 24, i32 %23)
  store %struct.whc_urb* %24, %struct.whc_urb** %10, align 8
  %25 = load %struct.whc_urb*, %struct.whc_urb** %10, align 8
  %26 = icmp eq %struct.whc_urb* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  br label %126

28:                                               ; preds = %4
  %29 = load %struct.whc_urb*, %struct.whc_urb** %10, align 8
  %30 = load %struct.urb*, %struct.urb** %8, align 8
  %31 = getelementptr inbounds %struct.urb, %struct.urb* %30, i32 0, i32 3
  store %struct.whc_urb* %29, %struct.whc_urb** %31, align 8
  %32 = load %struct.whc_qset*, %struct.whc_qset** %7, align 8
  %33 = load %struct.whc_urb*, %struct.whc_urb** %10, align 8
  %34 = getelementptr inbounds %struct.whc_urb, %struct.whc_urb* %33, i32 0, i32 2
  store %struct.whc_qset* %32, %struct.whc_qset** %34, align 8
  %35 = load %struct.urb*, %struct.urb** %8, align 8
  %36 = load %struct.whc_urb*, %struct.whc_urb** %10, align 8
  %37 = getelementptr inbounds %struct.whc_urb, %struct.whc_urb* %36, i32 0, i32 1
  store %struct.urb* %35, %struct.urb** %37, align 8
  %38 = load %struct.whc_urb*, %struct.whc_urb** %10, align 8
  %39 = getelementptr inbounds %struct.whc_urb, %struct.whc_urb* %38, i32 0, i32 0
  %40 = load i32, i32* @urb_dequeue_work, align 4
  %41 = call i32 @INIT_WORK(i32* %39, i32 %40)
  %42 = load %struct.urb*, %struct.urb** %8, align 8
  %43 = getelementptr inbounds %struct.urb, %struct.urb* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %70

46:                                               ; preds = %28
  %47 = load %struct.whc*, %struct.whc** %6, align 8
  %48 = load %struct.whc_qset*, %struct.whc_qset** %7, align 8
  %49 = load %struct.urb*, %struct.urb** %8, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @qset_add_urb_sg(%struct.whc* %47, %struct.whc_qset* %48, %struct.urb* %49, i32 %50)
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %46
  %57 = load %struct.whc_qset*, %struct.whc_qset** %7, align 8
  %58 = load %struct.urb*, %struct.urb** %8, align 8
  %59 = call i32 @qset_free_stds(%struct.whc_qset* %57, %struct.urb* %58)
  %60 = load %struct.whc*, %struct.whc** %6, align 8
  %61 = load %struct.whc_qset*, %struct.whc_qset** %7, align 8
  %62 = load %struct.urb*, %struct.urb** %8, align 8
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @qset_add_urb_sg_linearize(%struct.whc* %60, %struct.whc_qset* %61, %struct.urb* %62, i32 %63)
  store i32 %64, i32* %14, align 4
  br label %65

65:                                               ; preds = %56, %46
  %66 = load i32, i32* %14, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  br label %126

69:                                               ; preds = %65
  store i32 0, i32* %5, align 4
  br label %132

70:                                               ; preds = %28
  %71 = load i32, i32* %11, align 4
  %72 = load i64, i64* @QTD_MAX_XFER_SIZE, align 8
  %73 = call i32 @DIV_ROUND_UP(i32 %71, i64 %72)
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %13, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  store i32 1, i32* %13, align 4
  br label %77

77:                                               ; preds = %76, %70
  br label %78

78:                                               ; preds = %114, %77
  %79 = load i32, i32* %13, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %125

81:                                               ; preds = %78
  %82 = load i32, i32* %11, align 4
  %83 = sext i32 %82 to i64
  store i64 %83, i64* %16, align 8
  %84 = load i64, i64* %16, align 8
  %85 = load i64, i64* @QTD_MAX_XFER_SIZE, align 8
  %86 = icmp ugt i64 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %81
  %88 = load i64, i64* @QTD_MAX_XFER_SIZE, align 8
  store i64 %88, i64* %16, align 8
  br label %89

89:                                               ; preds = %87, %81
  %90 = load %struct.whc*, %struct.whc** %6, align 8
  %91 = load %struct.whc_qset*, %struct.whc_qset** %7, align 8
  %92 = load %struct.urb*, %struct.urb** %8, align 8
  %93 = load i32, i32* %9, align 4
  %94 = call %struct.whc_std* @qset_new_std(%struct.whc* %90, %struct.whc_qset* %91, %struct.urb* %92, i32 %93)
  store %struct.whc_std* %94, %struct.whc_std** %15, align 8
  %95 = load %struct.whc_std*, %struct.whc_std** %15, align 8
  %96 = icmp eq %struct.whc_std* %95, null
  br i1 %96, label %97, label %98

97:                                               ; preds = %89
  br label %126

98:                                               ; preds = %89
  %99 = load i64, i64* %12, align 8
  %100 = load %struct.whc_std*, %struct.whc_std** %15, align 8
  %101 = getelementptr inbounds %struct.whc_std, %struct.whc_std* %100, i32 0, i32 0
  store i64 %99, i64* %101, align 8
  %102 = load i64, i64* %16, align 8
  %103 = load %struct.whc_std*, %struct.whc_std** %15, align 8
  %104 = getelementptr inbounds %struct.whc_std, %struct.whc_std* %103, i32 0, i32 1
  store i64 %102, i64* %104, align 8
  %105 = load i32, i32* %13, align 4
  %106 = load %struct.whc_std*, %struct.whc_std** %15, align 8
  %107 = getelementptr inbounds %struct.whc_std, %struct.whc_std* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 8
  %108 = load %struct.whc*, %struct.whc** %6, align 8
  %109 = load %struct.whc_std*, %struct.whc_std** %15, align 8
  %110 = load i32, i32* %9, align 4
  %111 = call i64 @qset_fill_page_list(%struct.whc* %108, %struct.whc_std* %109, i32 %110)
  %112 = icmp slt i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %98
  br label %126

114:                                              ; preds = %98
  %115 = load i32, i32* %13, align 4
  %116 = add nsw i32 %115, -1
  store i32 %116, i32* %13, align 4
  %117 = load i64, i64* %16, align 8
  %118 = load i32, i32* %11, align 4
  %119 = sext i32 %118 to i64
  %120 = sub i64 %119, %117
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %11, align 4
  %122 = load i64, i64* %16, align 8
  %123 = load i64, i64* %12, align 8
  %124 = add i64 %123, %122
  store i64 %124, i64* %12, align 8
  br label %78

125:                                              ; preds = %78
  store i32 0, i32* %5, align 4
  br label %132

126:                                              ; preds = %113, %97, %68, %27
  %127 = load %struct.whc_qset*, %struct.whc_qset** %7, align 8
  %128 = load %struct.urb*, %struct.urb** %8, align 8
  %129 = call i32 @qset_free_stds(%struct.whc_qset* %127, %struct.urb* %128)
  %130 = load i32, i32* @ENOMEM, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %5, align 4
  br label %132

132:                                              ; preds = %126, %125, %69
  %133 = load i32, i32* %5, align 4
  ret i32 %133
}

declare dso_local %struct.whc_urb* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @qset_add_urb_sg(%struct.whc*, %struct.whc_qset*, %struct.urb*, i32) #1

declare dso_local i32 @qset_free_stds(%struct.whc_qset*, %struct.urb*) #1

declare dso_local i32 @qset_add_urb_sg_linearize(%struct.whc*, %struct.whc_qset*, %struct.urb*, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i64) #1

declare dso_local %struct.whc_std* @qset_new_std(%struct.whc*, %struct.whc_qset*, %struct.urb*, i32) #1

declare dso_local i64 @qset_fill_page_list(%struct.whc*, %struct.whc_std*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
