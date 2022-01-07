; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/hw/mscc/extr_ntb_hw_switchtec.c_switchtec_ntb_init_db_msg_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/hw/mscc/extr_ntb_hw_switchtec.c_switchtec_ntb_init_db_msg_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switchtec_ntb = type { i8*, i8*, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32* }

@.str = private unnamed_addr constant [36 x i8] c"irqs - event: %d, db: %d, msgs: %d\0A\00", align 1
@switchtec_ntb_doorbell_isr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"switchtec_ntb_doorbell\00", align 1
@switchtec_ntb_message_isr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"switchtec_ntb_message\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.switchtec_ntb*)* @switchtec_ntb_init_db_msg_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @switchtec_ntb_init_db_msg_irq(%struct.switchtec_ntb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.switchtec_ntb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.switchtec_ntb* %0, %struct.switchtec_ntb** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 8, i32* %9, align 4
  %10 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %3, align 8
  %11 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %10, i32 0, i32 2
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = call i32 @ioread32(i32* %15)
  store i32 %16, i32* %8, align 4
  br label %17

17:                                               ; preds = %21, %1
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %6, align 4
  br label %17

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %35, %24
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp eq i32 %30, %31
  br label %33

33:                                               ; preds = %29, %25
  %34 = phi i1 [ true, %25 ], [ %32, %29 ]
  br i1 %34, label %35, label %38

35:                                               ; preds = %33
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %7, align 4
  br label %25

38:                                               ; preds = %33
  %39 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %3, align 8
  %40 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %39, i32 0, i32 2
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @dev_dbg(i32* %42, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %44, i32 %45)
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %63, %38
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* %9, align 4
  %50 = sub nsw i32 %49, 4
  %51 = icmp slt i32 %48, %50
  br i1 %51, label %52, label %66

52:                                               ; preds = %47
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %3, align 8
  %55 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %54, i32 0, i32 3
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = call i32 @iowrite8(i32 %53, i32* %61)
  br label %63

63:                                               ; preds = %52
  %64 = load i32, i32* %4, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %4, align 4
  br label %47

66:                                               ; preds = %47
  br label %67

67:                                               ; preds = %82, %66
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %85

71:                                               ; preds = %67
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %3, align 8
  %74 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %73, i32 0, i32 3
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = call i32 @iowrite8(i32 %72, i32* %80)
  br label %82

82:                                               ; preds = %71
  %83 = load i32, i32* %4, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %4, align 4
  br label %67

85:                                               ; preds = %67
  %86 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %3, align 8
  %87 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %86, i32 0, i32 2
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %6, align 4
  %92 = call i8* @pci_irq_vector(i32 %90, i32 %91)
  %93 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %3, align 8
  %94 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %93, i32 0, i32 0
  store i8* %92, i8** %94, align 8
  %95 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %3, align 8
  %96 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %95, i32 0, i32 2
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %7, align 4
  %101 = call i8* @pci_irq_vector(i32 %99, i32 %100)
  %102 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %3, align 8
  %103 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %102, i32 0, i32 1
  store i8* %101, i8** %103, align 8
  %104 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %3, align 8
  %105 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = load i32, i32* @switchtec_ntb_doorbell_isr, align 4
  %108 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %3, align 8
  %109 = call i32 @request_irq(i8* %106, i32 %107, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), %struct.switchtec_ntb* %108)
  store i32 %109, i32* %5, align 4
  %110 = load i32, i32* %5, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %85
  %113 = load i32, i32* %5, align 4
  store i32 %113, i32* %2, align 4
  br label %131

114:                                              ; preds = %85
  %115 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %3, align 8
  %116 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %115, i32 0, i32 1
  %117 = load i8*, i8** %116, align 8
  %118 = load i32, i32* @switchtec_ntb_message_isr, align 4
  %119 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %3, align 8
  %120 = call i32 @request_irq(i8* %117, i32 %118, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), %struct.switchtec_ntb* %119)
  store i32 %120, i32* %5, align 4
  %121 = load i32, i32* %5, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %114
  %124 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %3, align 8
  %125 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %124, i32 0, i32 0
  %126 = load i8*, i8** %125, align 8
  %127 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %3, align 8
  %128 = call i32 @free_irq(i8* %126, %struct.switchtec_ntb* %127)
  %129 = load i32, i32* %5, align 4
  store i32 %129, i32* %2, align 4
  br label %131

130:                                              ; preds = %114
  store i32 0, i32* %2, align 4
  br label %131

131:                                              ; preds = %130, %123, %112
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

declare dso_local i32 @ioread32(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @iowrite8(i32, i32*) #1

declare dso_local i8* @pci_irq_vector(i32, i32) #1

declare dso_local i32 @request_irq(i8*, i32, i32, i8*, %struct.switchtec_ntb*) #1

declare dso_local i32 @free_irq(i8*, %struct.switchtec_ntb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
