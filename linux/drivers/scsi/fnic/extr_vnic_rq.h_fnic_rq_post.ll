; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_vnic_rq.h_fnic_rq_post.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_vnic_rq.h_fnic_rq_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnic_rq = type { %struct.TYPE_4__*, %struct.TYPE_3__, %struct.vnic_rq_buf* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.vnic_rq_buf = type { i32, i32, i32, %struct.vnic_rq_buf*, i32, i8* }

@VNIC_RQ_RETURN_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vnic_rq*, i8*, i32, i32, i32)* @vnic_rq_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vnic_rq_post(%struct.vnic_rq* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.vnic_rq*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.vnic_rq_buf*, align 8
  store %struct.vnic_rq* %0, %struct.vnic_rq** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.vnic_rq*, %struct.vnic_rq** %6, align 8
  %13 = getelementptr inbounds %struct.vnic_rq, %struct.vnic_rq* %12, i32 0, i32 2
  %14 = load %struct.vnic_rq_buf*, %struct.vnic_rq_buf** %13, align 8
  store %struct.vnic_rq_buf* %14, %struct.vnic_rq_buf** %11, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = load %struct.vnic_rq_buf*, %struct.vnic_rq_buf** %11, align 8
  %17 = getelementptr inbounds %struct.vnic_rq_buf, %struct.vnic_rq_buf* %16, i32 0, i32 5
  store i8* %15, i8** %17, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.vnic_rq_buf*, %struct.vnic_rq_buf** %11, align 8
  %20 = getelementptr inbounds %struct.vnic_rq_buf, %struct.vnic_rq_buf* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.vnic_rq_buf*, %struct.vnic_rq_buf** %11, align 8
  %23 = getelementptr inbounds %struct.vnic_rq_buf, %struct.vnic_rq_buf* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* %10, align 4
  %25 = load %struct.vnic_rq_buf*, %struct.vnic_rq_buf** %11, align 8
  %26 = getelementptr inbounds %struct.vnic_rq_buf, %struct.vnic_rq_buf* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.vnic_rq_buf*, %struct.vnic_rq_buf** %11, align 8
  %28 = getelementptr inbounds %struct.vnic_rq_buf, %struct.vnic_rq_buf* %27, i32 0, i32 3
  %29 = load %struct.vnic_rq_buf*, %struct.vnic_rq_buf** %28, align 8
  store %struct.vnic_rq_buf* %29, %struct.vnic_rq_buf** %11, align 8
  %30 = load %struct.vnic_rq_buf*, %struct.vnic_rq_buf** %11, align 8
  %31 = load %struct.vnic_rq*, %struct.vnic_rq** %6, align 8
  %32 = getelementptr inbounds %struct.vnic_rq, %struct.vnic_rq* %31, i32 0, i32 2
  store %struct.vnic_rq_buf* %30, %struct.vnic_rq_buf** %32, align 8
  %33 = load %struct.vnic_rq*, %struct.vnic_rq** %6, align 8
  %34 = getelementptr inbounds %struct.vnic_rq, %struct.vnic_rq* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %35, align 8
  %38 = load %struct.vnic_rq_buf*, %struct.vnic_rq_buf** %11, align 8
  %39 = getelementptr inbounds %struct.vnic_rq_buf, %struct.vnic_rq_buf* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = and i32 %40, 15
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %5
  %44 = call i32 (...) @wmb()
  %45 = load %struct.vnic_rq_buf*, %struct.vnic_rq_buf** %11, align 8
  %46 = getelementptr inbounds %struct.vnic_rq_buf, %struct.vnic_rq_buf* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.vnic_rq*, %struct.vnic_rq** %6, align 8
  %49 = getelementptr inbounds %struct.vnic_rq, %struct.vnic_rq* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = call i32 @iowrite32(i32 %47, i32* %51)
  br label %53

53:                                               ; preds = %43, %5
  ret void
}

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @iowrite32(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
