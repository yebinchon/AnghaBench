; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_xen-scsiback.c_scsiback_do_del_lun.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_xen-scsiback.c_scsiback_do_del_lun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vscsibk_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ids_tuple = type { i32 }

@XBT_NIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@XenbusStateClosed = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"xenbus_printf error %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vscsibk_info*, i8*, %struct.ids_tuple*)* @scsiback_do_del_lun to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scsiback_do_del_lun(%struct.vscsibk_info* %0, i8* %1, %struct.ids_tuple* %2) #0 {
  %4 = alloca %struct.vscsibk_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ids_tuple*, align 8
  store %struct.vscsibk_info* %0, %struct.vscsibk_info** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.ids_tuple* %2, %struct.ids_tuple** %6, align 8
  %7 = load %struct.vscsibk_info*, %struct.vscsibk_info** %4, align 8
  %8 = load %struct.ids_tuple*, %struct.ids_tuple** %6, align 8
  %9 = call i32 @scsiback_del_translation_entry(%struct.vscsibk_info* %7, %struct.ids_tuple* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %26, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* @XBT_NIL, align 4
  %13 = load %struct.vscsibk_info*, %struct.vscsibk_info** %4, align 8
  %14 = getelementptr inbounds %struct.vscsibk_info, %struct.vscsibk_info* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = load i32, i32* @XenbusStateClosed, align 4
  %20 = call i64 @xenbus_printf(i32 %12, i32 %17, i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %11
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  br label %25

25:                                               ; preds = %22, %11
  br label %26

26:                                               ; preds = %25, %3
  ret void
}

declare dso_local i32 @scsiback_del_translation_entry(%struct.vscsibk_info*, %struct.ids_tuple*) #1

declare dso_local i64 @xenbus_printf(i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @pr_err(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
