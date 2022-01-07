; ModuleID = '/home/carl/AnghaBench/linux/drivers/vhost/extr_scsi.c_vhost_scsi_iov_to_sgl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vhost/extr_scsi.c_vhost_scsi_iov_to_sgl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_scsi_cmd = type { i32 }
%struct.iov_iter = type { i32 }
%struct.scatterlist = type { i32 }
%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vhost_scsi_cmd*, i32, %struct.iov_iter*, %struct.scatterlist*, i32)* @vhost_scsi_iov_to_sgl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vhost_scsi_iov_to_sgl(%struct.vhost_scsi_cmd* %0, i32 %1, %struct.iov_iter* %2, %struct.scatterlist* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vhost_scsi_cmd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.iov_iter*, align 8
  %10 = alloca %struct.scatterlist*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.scatterlist*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.page*, align 8
  store %struct.vhost_scsi_cmd* %0, %struct.vhost_scsi_cmd** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.iov_iter* %2, %struct.iov_iter** %9, align 8
  store %struct.scatterlist* %3, %struct.scatterlist** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  store %struct.scatterlist* %15, %struct.scatterlist** %12, align 8
  br label %16

16:                                               ; preds = %46, %5
  %17 = load %struct.iov_iter*, %struct.iov_iter** %9, align 8
  %18 = call i64 @iov_iter_count(%struct.iov_iter* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %51

20:                                               ; preds = %16
  %21 = load %struct.vhost_scsi_cmd*, %struct.vhost_scsi_cmd** %7, align 8
  %22 = load %struct.iov_iter*, %struct.iov_iter** %9, align 8
  %23 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @vhost_scsi_map_to_sgl(%struct.vhost_scsi_cmd* %21, %struct.iov_iter* %22, %struct.scatterlist* %23, i32 %24)
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %46

28:                                               ; preds = %20
  br label %29

29:                                               ; preds = %43, %28
  %30 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %31 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %32 = icmp ult %struct.scatterlist* %30, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %29
  %34 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %35 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %34, i32 1
  store %struct.scatterlist* %35, %struct.scatterlist** %12, align 8
  %36 = ptrtoint %struct.scatterlist* %34 to i32
  %37 = call %struct.page* @sg_page(i32 %36)
  store %struct.page* %37, %struct.page** %14, align 8
  %38 = load %struct.page*, %struct.page** %14, align 8
  %39 = icmp ne %struct.page* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load %struct.page*, %struct.page** %14, align 8
  %42 = call i32 @put_page(%struct.page* %41)
  br label %43

43:                                               ; preds = %40, %33
  br label %29

44:                                               ; preds = %29
  %45 = load i32, i32* %13, align 4
  store i32 %45, i32* %6, align 4
  br label %52

46:                                               ; preds = %20
  %47 = load i32, i32* %13, align 4
  %48 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %48, i64 %49
  store %struct.scatterlist* %50, %struct.scatterlist** %10, align 8
  br label %16

51:                                               ; preds = %16
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %51, %44
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local i64 @iov_iter_count(%struct.iov_iter*) #1

declare dso_local i32 @vhost_scsi_map_to_sgl(%struct.vhost_scsi_cmd*, %struct.iov_iter*, %struct.scatterlist*, i32) #1

declare dso_local %struct.page* @sg_page(i32) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
