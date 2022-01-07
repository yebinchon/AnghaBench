; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/c67x00/extr_c67x00-sched.c_c67x00_add_iso_urb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/c67x00/extr_c67x00-sched.c_c67x00_add_iso_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c67x00_hcd = type { i32 }
%struct.urb = type { i32, i8*, i32, %struct.TYPE_3__*, i32, %struct.c67x00_urb_priv* }
%struct.TYPE_3__ = type { i32, i32, i32, i64 }
%struct.c67x00_urb_priv = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@USB_PID_OUT = common dso_local global i32 0, align 4
@USB_PID_IN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"create failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.c67x00_hcd*, %struct.urb*)* @c67x00_add_iso_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c67x00_add_iso_urb(%struct.c67x00_hcd* %0, %struct.urb* %1) #0 {
  %3 = alloca %struct.c67x00_hcd*, align 8
  %4 = alloca %struct.urb*, align 8
  %5 = alloca %struct.c67x00_urb_priv*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.c67x00_hcd* %0, %struct.c67x00_hcd** %3, align 8
  store %struct.urb* %1, %struct.urb** %4, align 8
  %10 = load %struct.urb*, %struct.urb** %4, align 8
  %11 = getelementptr inbounds %struct.urb, %struct.urb* %10, i32 0, i32 5
  %12 = load %struct.c67x00_urb_priv*, %struct.c67x00_urb_priv** %11, align 8
  store %struct.c67x00_urb_priv* %12, %struct.c67x00_urb_priv** %5, align 8
  %13 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %3, align 8
  %14 = getelementptr inbounds %struct.c67x00_hcd, %struct.c67x00_hcd* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.c67x00_urb_priv*, %struct.c67x00_urb_priv** %5, align 8
  %17 = getelementptr inbounds %struct.c67x00_urb_priv, %struct.c67x00_urb_priv* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @frame_after_eq(i32 %15, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %136

23:                                               ; preds = %2
  %24 = load %struct.c67x00_urb_priv*, %struct.c67x00_urb_priv** %5, align 8
  %25 = getelementptr inbounds %struct.c67x00_urb_priv, %struct.c67x00_urb_priv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.urb*, %struct.urb** %4, align 8
  %28 = getelementptr inbounds %struct.urb, %struct.urb* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp sge i32 %26, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @BUG_ON(i32 %31)
  %33 = load %struct.urb*, %struct.urb** %4, align 8
  %34 = getelementptr inbounds %struct.urb, %struct.urb* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = load %struct.urb*, %struct.urb** %4, align 8
  %37 = getelementptr inbounds %struct.urb, %struct.urb* %36, i32 0, i32 3
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = load %struct.c67x00_urb_priv*, %struct.c67x00_urb_priv** %5, align 8
  %40 = getelementptr inbounds %struct.c67x00_urb_priv, %struct.c67x00_urb_priv* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %35, i64 %46
  store i8* %47, i8** %6, align 8
  %48 = load %struct.urb*, %struct.urb** %4, align 8
  %49 = getelementptr inbounds %struct.urb, %struct.urb* %48, i32 0, i32 3
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = load %struct.c67x00_urb_priv*, %struct.c67x00_urb_priv** %5, align 8
  %52 = getelementptr inbounds %struct.c67x00_urb_priv, %struct.c67x00_urb_priv* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %7, align 4
  %58 = load %struct.urb*, %struct.urb** %4, align 8
  %59 = getelementptr inbounds %struct.urb, %struct.urb* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @usb_pipeout(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %23
  %64 = load i32, i32* @USB_PID_OUT, align 4
  br label %67

65:                                               ; preds = %23
  %66 = load i32, i32* @USB_PID_IN, align 4
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i32 [ %64, %63 ], [ %66, %65 ]
  store i32 %68, i32* %8, align 4
  %69 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %3, align 8
  %70 = load %struct.urb*, %struct.urb** %4, align 8
  %71 = load i8*, i8** %6, align 8
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.c67x00_urb_priv*, %struct.c67x00_urb_priv** %5, align 8
  %75 = getelementptr inbounds %struct.c67x00_urb_priv, %struct.c67x00_urb_priv* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = call i32 @c67x00_create_td(%struct.c67x00_hcd* %69, %struct.urb* %70, i8* %71, i32 %72, i32 %73, i32 0, i64 %77)
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %118

81:                                               ; preds = %67
  %82 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %3, align 8
  %83 = call i32 @c67x00_hcd_dev(%struct.c67x00_hcd* %82)
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @dev_dbg(i32 %83, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %84)
  %86 = load %struct.urb*, %struct.urb** %4, align 8
  %87 = getelementptr inbounds %struct.urb, %struct.urb* %86, i32 0, i32 3
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = load %struct.c67x00_urb_priv*, %struct.c67x00_urb_priv** %5, align 8
  %90 = getelementptr inbounds %struct.c67x00_urb_priv, %struct.c67x00_urb_priv* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 3
  store i64 0, i64* %94, align 8
  %95 = load i32, i32* %9, align 4
  %96 = load %struct.urb*, %struct.urb** %4, align 8
  %97 = getelementptr inbounds %struct.urb, %struct.urb* %96, i32 0, i32 3
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = load %struct.c67x00_urb_priv*, %struct.c67x00_urb_priv** %5, align 8
  %100 = getelementptr inbounds %struct.c67x00_urb_priv, %struct.c67x00_urb_priv* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 2
  store i32 %95, i32* %104, align 8
  %105 = load %struct.c67x00_urb_priv*, %struct.c67x00_urb_priv** %5, align 8
  %106 = getelementptr inbounds %struct.c67x00_urb_priv, %struct.c67x00_urb_priv* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = add nsw i32 %107, 1
  %109 = load %struct.urb*, %struct.urb** %4, align 8
  %110 = getelementptr inbounds %struct.urb, %struct.urb* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp eq i32 %108, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %81
  %114 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %3, align 8
  %115 = load %struct.urb*, %struct.urb** %4, align 8
  %116 = call i32 @c67x00_giveback_urb(%struct.c67x00_hcd* %114, %struct.urb* %115, i32 0)
  br label %117

117:                                              ; preds = %113, %81
  br label %118

118:                                              ; preds = %117, %67
  %119 = load %struct.c67x00_urb_priv*, %struct.c67x00_urb_priv** %5, align 8
  %120 = getelementptr inbounds %struct.c67x00_urb_priv, %struct.c67x00_urb_priv* %119, i32 0, i32 1
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.urb*, %struct.urb** %4, align 8
  %125 = getelementptr inbounds %struct.urb, %struct.urb* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @frame_add(i32 %123, i32 %126)
  %128 = load %struct.c67x00_urb_priv*, %struct.c67x00_urb_priv** %5, align 8
  %129 = getelementptr inbounds %struct.c67x00_urb_priv, %struct.c67x00_urb_priv* %128, i32 0, i32 1
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  store i32 %127, i32* %131, align 4
  %132 = load %struct.c67x00_urb_priv*, %struct.c67x00_urb_priv** %5, align 8
  %133 = getelementptr inbounds %struct.c67x00_urb_priv, %struct.c67x00_urb_priv* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %133, align 8
  br label %136

136:                                              ; preds = %118, %2
  ret i32 0
}

declare dso_local i64 @frame_after_eq(i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @usb_pipeout(i32) #1

declare dso_local i32 @c67x00_create_td(%struct.c67x00_hcd*, %struct.urb*, i8*, i32, i32, i32, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @c67x00_hcd_dev(%struct.c67x00_hcd*) #1

declare dso_local i32 @c67x00_giveback_urb(%struct.c67x00_hcd*, %struct.urb*, i32) #1

declare dso_local i32 @frame_add(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
