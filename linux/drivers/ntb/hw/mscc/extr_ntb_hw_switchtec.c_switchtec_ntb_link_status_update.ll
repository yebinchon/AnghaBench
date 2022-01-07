; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/hw/mscc/extr_ntb_hw_switchtec.c_switchtec_ntb_link_status_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/hw/mscc/extr_ntb_hw_switchtec.c_switchtec_ntb_link_status_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switchtec_ntb = type { i32, %struct.TYPE_5__*, i32, %struct.TYPE_4__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@SWITCHTEC_NTB_MAGIC = common dso_local global i32 0, align 4
@LINK_MESSAGE = common dso_local global i32 0, align 4
@MSG_CHECK_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"ntb link %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"up\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"down\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.switchtec_ntb*)* @switchtec_ntb_link_status_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @switchtec_ntb_link_status_update(%struct.switchtec_ntb* %0) #0 {
  %2 = alloca %struct.switchtec_ntb*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.switchtec_ntb* %0, %struct.switchtec_ntb** %2, align 8
  %6 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %2, align 8
  %7 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %4, align 4
  %9 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %2, align 8
  %10 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %9, i32 0, i32 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %1
  %17 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %2, align 8
  %18 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %17, i32 0, i32 3
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = call i32 @ioread64(i32* %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @SWITCHTEC_NTB_MAGIC, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %16
  %26 = load i32, i32* %5, align 4
  %27 = ashr i32 %26, 32
  store i32 %27, i32* %3, align 4
  br label %29

28:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %25
  br label %30

30:                                               ; preds = %29, %1
  %31 = load i32, i32* %3, align 4
  %32 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %2, align 8
  %33 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %2, align 8
  %35 = call i32 @switchtec_ntb_set_link_speed(%struct.switchtec_ntb* %34)
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %62

39:                                               ; preds = %30
  %40 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %2, align 8
  %41 = load i32, i32* @LINK_MESSAGE, align 4
  %42 = load i32, i32* @MSG_CHECK_LINK, align 4
  %43 = call i32 @switchtec_ntb_send_msg(%struct.switchtec_ntb* %40, i32 %41, i32 %42)
  %44 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %2, align 8
  %45 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %44, i32 0, i32 2
  %46 = call i32 @ntb_link_event(i32* %45)
  %47 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %2, align 8
  %48 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %47, i32 0, i32 1
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %3, align 4
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %55 = call i32 @dev_info(i32* %50, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %54)
  %56 = load i32, i32* %3, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %39
  %59 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %2, align 8
  %60 = call i32 @crosslink_init_dbmsgs(%struct.switchtec_ntb* %59)
  br label %61

61:                                               ; preds = %58, %39
  br label %62

62:                                               ; preds = %61, %30
  ret void
}

declare dso_local i32 @ioread64(i32*) #1

declare dso_local i32 @switchtec_ntb_set_link_speed(%struct.switchtec_ntb*) #1

declare dso_local i32 @switchtec_ntb_send_msg(%struct.switchtec_ntb*, i32, i32) #1

declare dso_local i32 @ntb_link_event(i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i8*) #1

declare dso_local i32 @crosslink_init_dbmsgs(%struct.switchtec_ntb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
