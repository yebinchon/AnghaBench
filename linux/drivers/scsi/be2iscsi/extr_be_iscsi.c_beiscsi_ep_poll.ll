; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_iscsi.c_beiscsi_ep_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_iscsi.c_beiscsi_ep_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_endpoint = type { %struct.beiscsi_endpoint* }
%struct.beiscsi_endpoint = type { i32, i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@BEISCSI_LOG_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"BS_%d : In  beiscsi_ep_poll\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @beiscsi_ep_poll(%struct.iscsi_endpoint* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_endpoint*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.beiscsi_endpoint*, align 8
  store %struct.iscsi_endpoint* %0, %struct.iscsi_endpoint** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %4, align 8
  %8 = getelementptr inbounds %struct.iscsi_endpoint, %struct.iscsi_endpoint* %7, i32 0, i32 0
  %9 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %8, align 8
  store %struct.beiscsi_endpoint* %9, %struct.beiscsi_endpoint** %6, align 8
  %10 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %6, align 8
  %11 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @KERN_INFO, align 4
  %14 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %15 = call i32 @beiscsi_log(i32 %12, i32 %13, i32 %14, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %6, align 8
  %17 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %21, %20
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @beiscsi_log(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
