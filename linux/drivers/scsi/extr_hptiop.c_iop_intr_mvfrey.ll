; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hptiop.c_iop_intr_mvfrey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hptiop.c_iop_intr_mvfrey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hptiop_hba = type { %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32*, i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@CPU_TO_F0_DRBL_MSG_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"received outbound msg %x\0A\00", align 1
@IOPMU_QUEUE_MASK_HOST_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hptiop_hba*)* @iop_intr_mvfrey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iop_intr_mvfrey(%struct.hptiop_hba* %0) #0 {
  %2 = alloca %struct.hptiop_hba*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hptiop_hba* %0, %struct.hptiop_hba** %2, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.hptiop_hba*, %struct.hptiop_hba** %2, align 8
  %10 = getelementptr inbounds %struct.hptiop_hba, %struct.hptiop_hba* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load %struct.hptiop_hba*, %struct.hptiop_hba** %2, align 8
  %15 = getelementptr inbounds %struct.hptiop_hba, %struct.hptiop_hba* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 3
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = call i32 @writel(i32 0, i32* %19)
  br label %21

21:                                               ; preds = %13, %1
  %22 = load %struct.hptiop_hba*, %struct.hptiop_hba** %2, align 8
  %23 = getelementptr inbounds %struct.hptiop_hba, %struct.hptiop_hba* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 3
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 3
  %28 = call i32 @readl(i32* %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %58

31:                                               ; preds = %21
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.hptiop_hba*, %struct.hptiop_hba** %2, align 8
  %34 = getelementptr inbounds %struct.hptiop_hba, %struct.hptiop_hba* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 3
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 3
  %39 = call i32 @writel(i32 %32, i32* %38)
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @CPU_TO_F0_DRBL_MSG_BIT, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %31
  %45 = load %struct.hptiop_hba*, %struct.hptiop_hba** %2, align 8
  %46 = getelementptr inbounds %struct.hptiop_hba, %struct.hptiop_hba* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 3
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
  %51 = call i32 @readl(i32* %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @dprintk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load %struct.hptiop_hba*, %struct.hptiop_hba** %2, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @hptiop_message_callback(%struct.hptiop_hba* %54, i32 %55)
  br label %57

57:                                               ; preds = %44, %31
  store i32 1, i32* %7, align 4
  br label %58

58:                                               ; preds = %57, %21
  %59 = load %struct.hptiop_hba*, %struct.hptiop_hba** %2, align 8
  %60 = getelementptr inbounds %struct.hptiop_hba, %struct.hptiop_hba* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 3
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = call i32 @readl(i32* %64)
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %143

68:                                               ; preds = %58
  %69 = load i32, i32* %4, align 4
  %70 = load %struct.hptiop_hba*, %struct.hptiop_hba** %2, align 8
  %71 = getelementptr inbounds %struct.hptiop_hba, %struct.hptiop_hba* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 3
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = call i32 @writel(i32 %69, i32* %75)
  br label %77

77:                                               ; preds = %132, %68
  %78 = load %struct.hptiop_hba*, %struct.hptiop_hba** %2, align 8
  %79 = getelementptr inbounds %struct.hptiop_hba, %struct.hptiop_hba* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %83, 255
  store i32 %84, i32* %5, align 4
  %85 = load %struct.hptiop_hba*, %struct.hptiop_hba** %2, align 8
  %86 = getelementptr inbounds %struct.hptiop_hba, %struct.hptiop_hba* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  store i32 %89, i32* %6, align 4
  br label %90

90:                                               ; preds = %105, %77
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* %5, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %126

94:                                               ; preds = %90
  %95 = load i32, i32* %6, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %6, align 4
  %98 = load %struct.hptiop_hba*, %struct.hptiop_hba** %2, align 8
  %99 = getelementptr inbounds %struct.hptiop_hba, %struct.hptiop_hba* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = icmp eq i32 %97, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %94
  store i32 0, i32* %6, align 4
  br label %105

105:                                              ; preds = %104, %94
  %106 = load %struct.hptiop_hba*, %struct.hptiop_hba** %2, align 8
  %107 = getelementptr inbounds %struct.hptiop_hba, %struct.hptiop_hba* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 4
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %109, align 8
  %111 = load i32, i32* %6, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %3, align 4
  %116 = load i32, i32* %3, align 4
  %117 = load i32, i32* @IOPMU_QUEUE_MASK_HOST_BITS, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  %120 = xor i1 %119, true
  %121 = zext i1 %120 to i32
  %122 = call i32 @BUG_ON(i32 %121)
  %123 = load %struct.hptiop_hba*, %struct.hptiop_hba** %2, align 8
  %124 = load i32, i32* %3, align 4
  %125 = call i32 @hptiop_request_callback_mvfrey(%struct.hptiop_hba* %123, i32 %124)
  store i32 1, i32* %7, align 4
  br label %90

126:                                              ; preds = %90
  %127 = load i32, i32* %6, align 4
  %128 = load %struct.hptiop_hba*, %struct.hptiop_hba** %2, align 8
  %129 = getelementptr inbounds %struct.hptiop_hba, %struct.hptiop_hba* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 1
  store i32 %127, i32* %131, align 8
  br label %132

132:                                              ; preds = %126
  %133 = load i32, i32* %5, align 4
  %134 = load %struct.hptiop_hba*, %struct.hptiop_hba** %2, align 8
  %135 = getelementptr inbounds %struct.hptiop_hba, %struct.hptiop_hba* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %138, align 4
  %140 = and i32 %139, 255
  %141 = icmp ne i32 %133, %140
  br i1 %141, label %77, label %142

142:                                              ; preds = %132
  br label %143

143:                                              ; preds = %142, %58
  %144 = load %struct.hptiop_hba*, %struct.hptiop_hba** %2, align 8
  %145 = getelementptr inbounds %struct.hptiop_hba, %struct.hptiop_hba* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %156

148:                                              ; preds = %143
  %149 = load %struct.hptiop_hba*, %struct.hptiop_hba** %2, align 8
  %150 = getelementptr inbounds %struct.hptiop_hba, %struct.hptiop_hba* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 3
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = call i32 @writel(i32 4112, i32* %154)
  br label %156

156:                                              ; preds = %148, %143
  %157 = load i32, i32* %7, align 4
  ret i32 %157
}

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @hptiop_message_callback(%struct.hptiop_hba*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @hptiop_request_callback_mvfrey(%struct.hptiop_hba*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
