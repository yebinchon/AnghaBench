; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_unmap_iovec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_unmap_iovec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cmd = type { i64, %struct.scatterlist* }
%struct.scatterlist = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iscsi_cmd*)* @iscsit_unmap_iovec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iscsit_unmap_iovec(%struct.iscsi_cmd* %0) #0 {
  %2 = alloca %struct.iscsi_cmd*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.scatterlist*, align 8
  store %struct.iscsi_cmd* %0, %struct.iscsi_cmd** %2, align 8
  %5 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %2, align 8
  %6 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %5, i32 0, i32 1
  %7 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  store %struct.scatterlist* %7, %struct.scatterlist** %4, align 8
  store i64 0, i64* %3, align 8
  br label %8

8:                                                ; preds = %20, %1
  %9 = load i64, i64* %3, align 8
  %10 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %2, align 8
  %11 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ult i64 %9, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %8
  %15 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %16 = load i64, i64* %3, align 8
  %17 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %15, i64 %16
  %18 = call i32 @sg_page(%struct.scatterlist* %17)
  %19 = call i32 @kunmap(i32 %18)
  br label %20

20:                                               ; preds = %14
  %21 = load i64, i64* %3, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* %3, align 8
  br label %8

23:                                               ; preds = %8
  ret void
}

declare dso_local i32 @kunmap(i32) #1

declare dso_local i32 @sg_page(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
