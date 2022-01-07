; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_lnode.c_csio_ln_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_lnode.c_csio_ln_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_lnode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@csio_free_fcfinfo = common dso_local global i32 0, align 4
@csio_fdmi_enable = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csio_lnode*)* @csio_ln_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csio_ln_exit(%struct.csio_lnode* %0) #0 {
  %2 = alloca %struct.csio_lnode*, align 8
  %3 = alloca %struct.csio_lnode*, align 8
  store %struct.csio_lnode* %0, %struct.csio_lnode** %2, align 8
  %4 = load %struct.csio_lnode*, %struct.csio_lnode** %2, align 8
  %5 = call i32 @csio_cleanup_rns(%struct.csio_lnode* %4)
  %6 = load %struct.csio_lnode*, %struct.csio_lnode** %2, align 8
  %7 = call i64 @csio_is_npiv_ln(%struct.csio_lnode* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load %struct.csio_lnode*, %struct.csio_lnode** %2, align 8
  %11 = call %struct.csio_lnode* @csio_parent_lnode(%struct.csio_lnode* %10)
  store %struct.csio_lnode* %11, %struct.csio_lnode** %3, align 8
  %12 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %13 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* @csio_free_fcfinfo, align 4
  %17 = call i32 @kref_put(i32* %15, i32 %16)
  br label %31

18:                                               ; preds = %1
  %19 = load %struct.csio_lnode*, %struct.csio_lnode** %2, align 8
  %20 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* @csio_free_fcfinfo, align 4
  %24 = call i32 @kref_put(i32* %22, i32 %23)
  %25 = load i64, i64* @csio_fdmi_enable, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %18
  %28 = load %struct.csio_lnode*, %struct.csio_lnode** %2, align 8
  %29 = call i32 @csio_ln_fdmi_exit(%struct.csio_lnode* %28)
  br label %30

30:                                               ; preds = %27, %18
  br label %31

31:                                               ; preds = %30, %9
  %32 = load %struct.csio_lnode*, %struct.csio_lnode** %2, align 8
  %33 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %32, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %33, align 8
  ret void
}

declare dso_local i32 @csio_cleanup_rns(%struct.csio_lnode*) #1

declare dso_local i64 @csio_is_npiv_ln(%struct.csio_lnode*) #1

declare dso_local %struct.csio_lnode* @csio_parent_lnode(%struct.csio_lnode*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @csio_ln_fdmi_exit(%struct.csio_lnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
