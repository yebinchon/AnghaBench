; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_npiv_logout_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_npiv_logout_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvfc_event = type { %struct.TYPE_6__*, %struct.ibmvfc_host* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ibmvfc_host = type { i32, i32 }

@IBMVFC_HOST_ACTION_LOGO_WAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"NPIV Logout failed. 0x%X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibmvfc_event*)* @ibmvfc_npiv_logout_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmvfc_npiv_logout_done(%struct.ibmvfc_event* %0) #0 {
  %2 = alloca %struct.ibmvfc_event*, align 8
  %3 = alloca %struct.ibmvfc_host*, align 8
  %4 = alloca i32, align 4
  store %struct.ibmvfc_event* %0, %struct.ibmvfc_event** %2, align 8
  %5 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %2, align 8
  %6 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %5, i32 0, i32 1
  %7 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %6, align 8
  store %struct.ibmvfc_host* %7, %struct.ibmvfc_host** %3, align 8
  %8 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %2, align 8
  %9 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @be16_to_cpu(i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %2, align 8
  %17 = call i32 @ibmvfc_free_event(%struct.ibmvfc_event* %16)
  %18 = load i32, i32* %4, align 4
  switch i32 %18, label %35 [
    i32 128, label %19
    i32 130, label %34
    i32 129, label %34
    i32 132, label %34
    i32 131, label %34
  ]

19:                                               ; preds = %1
  %20 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %21 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %20, i32 0, i32 1
  %22 = call i32 @list_empty(i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %19
  %25 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %26 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @IBMVFC_HOST_ACTION_LOGO_WAIT, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %32 = call i32 @ibmvfc_init_host(%struct.ibmvfc_host* %31)
  br label %42

33:                                               ; preds = %24, %19
  br label %39

34:                                               ; preds = %1, %1, %1, %1
  br label %35

35:                                               ; preds = %1, %34
  %36 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @ibmvfc_dbg(%struct.ibmvfc_host* %36, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %35, %33
  %40 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %41 = call i32 @ibmvfc_hard_reset_host(%struct.ibmvfc_host* %40)
  br label %42

42:                                               ; preds = %39, %30
  ret void
}

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @ibmvfc_free_event(%struct.ibmvfc_event*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @ibmvfc_init_host(%struct.ibmvfc_host*) #1

declare dso_local i32 @ibmvfc_dbg(%struct.ibmvfc_host*, i8*, i32) #1

declare dso_local i32 @ibmvfc_hard_reset_host(%struct.ibmvfc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
