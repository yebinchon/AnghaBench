; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_rnode.c_csio_put_rnode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_rnode.c_csio_put_rnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_lnode = type { i32 }
%struct.csio_rnode = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @csio_put_rnode(%struct.csio_lnode* %0, %struct.csio_rnode* %1) #0 {
  %3 = alloca %struct.csio_lnode*, align 8
  %4 = alloca %struct.csio_rnode*, align 8
  store %struct.csio_lnode* %0, %struct.csio_lnode** %3, align 8
  store %struct.csio_rnode* %1, %struct.csio_rnode** %4, align 8
  %5 = load %struct.csio_rnode*, %struct.csio_rnode** %4, align 8
  %6 = call i64 @csio_is_rnode_uninit(%struct.csio_rnode* %5)
  %7 = icmp ne i64 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 @CSIO_DB_ASSERT(i32 %8)
  %10 = load %struct.csio_rnode*, %struct.csio_rnode** %4, align 8
  %11 = call i32 @csio_free_rnode(%struct.csio_rnode* %10)
  ret void
}

declare dso_local i32 @CSIO_DB_ASSERT(i32) #1

declare dso_local i64 @csio_is_rnode_uninit(%struct.csio_rnode*) #1

declare dso_local i32 @csio_free_rnode(%struct.csio_rnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
