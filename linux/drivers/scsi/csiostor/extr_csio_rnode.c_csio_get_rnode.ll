; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_rnode.c_csio_get_rnode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_rnode.c_csio_get_rnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_rnode = type { i32 }
%struct.csio_lnode = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.csio_rnode* (%struct.csio_lnode*, i32)* @csio_get_rnode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.csio_rnode* @csio_get_rnode(%struct.csio_lnode* %0, i32 %1) #0 {
  %3 = alloca %struct.csio_rnode*, align 8
  %4 = alloca %struct.csio_lnode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.csio_rnode*, align 8
  store %struct.csio_lnode* %0, %struct.csio_lnode** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.csio_lnode*, %struct.csio_lnode** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call %struct.csio_rnode* @csio_rn_lookup(%struct.csio_lnode* %7, i32 %8)
  store %struct.csio_rnode* %9, %struct.csio_rnode** %6, align 8
  %10 = load %struct.csio_rnode*, %struct.csio_rnode** %6, align 8
  %11 = icmp ne %struct.csio_rnode* %10, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %2
  %13 = load %struct.csio_lnode*, %struct.csio_lnode** %4, align 8
  %14 = call %struct.csio_rnode* @csio_alloc_rnode(%struct.csio_lnode* %13)
  store %struct.csio_rnode* %14, %struct.csio_rnode** %6, align 8
  %15 = load %struct.csio_rnode*, %struct.csio_rnode** %6, align 8
  %16 = icmp ne %struct.csio_rnode* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  store %struct.csio_rnode* null, %struct.csio_rnode** %3, align 8
  br label %24

18:                                               ; preds = %12
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.csio_rnode*, %struct.csio_rnode** %6, align 8
  %21 = getelementptr inbounds %struct.csio_rnode, %struct.csio_rnode* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  br label %22

22:                                               ; preds = %18, %2
  %23 = load %struct.csio_rnode*, %struct.csio_rnode** %6, align 8
  store %struct.csio_rnode* %23, %struct.csio_rnode** %3, align 8
  br label %24

24:                                               ; preds = %22, %17
  %25 = load %struct.csio_rnode*, %struct.csio_rnode** %3, align 8
  ret %struct.csio_rnode* %25
}

declare dso_local %struct.csio_rnode* @csio_rn_lookup(%struct.csio_lnode*, i32) #1

declare dso_local %struct.csio_rnode* @csio_alloc_rnode(%struct.csio_lnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
