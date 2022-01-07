; ModuleID = '/home/carl/AnghaBench/linux/drivers/vhost/extr_vhost.c_vhost_chr_read_iter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vhost/extr_vhost.c_vhost_chr_read_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_dev = type { i32, i32, i32, i32 }
%struct.iov_iter = type { i32 }
%struct.vhost_msg_node = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.vhost_iotlb_msg }
%struct.vhost_iotlb_msg = type { i64 }
%struct.TYPE_3__ = type { i32, %struct.vhost_iotlb_msg }

@wait = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@EBADFD = common dso_local global i32 0, align 4
@VHOST_IOTLB_MISS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vhost_chr_read_iter(%struct.vhost_dev* %0, %struct.iov_iter* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vhost_dev*, align 8
  %6 = alloca %struct.iov_iter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vhost_msg_node*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.vhost_iotlb_msg*, align 8
  %12 = alloca i8*, align 8
  store %struct.vhost_dev* %0, %struct.vhost_dev** %5, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @wait, align 4
  %14 = call i32 @DEFINE_WAIT(i32 %13)
  store i32 0, i32* %9, align 4
  store i32 4, i32* %10, align 4
  %15 = load %struct.iov_iter*, %struct.iov_iter** %6, align 8
  %16 = call i32 @iov_iter_count(%struct.iov_iter* %15)
  %17 = load i32, i32* %10, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %114

20:                                               ; preds = %3
  br label %21

21:                                               ; preds = %20, %58
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %21
  %25 = load %struct.vhost_dev*, %struct.vhost_dev** %5, align 8
  %26 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %25, i32 0, i32 1
  %27 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %28 = call i32 @prepare_to_wait(i32* %26, i32* @wait, i32 %27)
  br label %29

29:                                               ; preds = %24, %21
  %30 = load %struct.vhost_dev*, %struct.vhost_dev** %5, align 8
  %31 = load %struct.vhost_dev*, %struct.vhost_dev** %5, align 8
  %32 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %31, i32 0, i32 3
  %33 = call %struct.vhost_msg_node* @vhost_dequeue_msg(%struct.vhost_dev* %30, i32* %32)
  store %struct.vhost_msg_node* %33, %struct.vhost_msg_node** %8, align 8
  %34 = load %struct.vhost_msg_node*, %struct.vhost_msg_node** %8, align 8
  %35 = icmp ne %struct.vhost_msg_node* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %60

37:                                               ; preds = %29
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, i32* @EAGAIN, align 4
  %42 = sub i32 0, %41
  store i32 %42, i32* %9, align 4
  br label %60

43:                                               ; preds = %37
  %44 = load i32, i32* @current, align 4
  %45 = call i64 @signal_pending(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32, i32* @ERESTARTSYS, align 4
  %49 = sub i32 0, %48
  store i32 %49, i32* %9, align 4
  br label %60

50:                                               ; preds = %43
  %51 = load %struct.vhost_dev*, %struct.vhost_dev** %5, align 8
  %52 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* @EBADFD, align 4
  %57 = sub i32 0, %56
  store i32 %57, i32* %9, align 4
  br label %60

58:                                               ; preds = %50
  %59 = call i32 (...) @schedule()
  br label %21

60:                                               ; preds = %55, %47, %40, %36
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %60
  %64 = load %struct.vhost_dev*, %struct.vhost_dev** %5, align 8
  %65 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %64, i32 0, i32 1
  %66 = call i32 @finish_wait(i32* %65, i32* @wait)
  br label %67

67:                                               ; preds = %63, %60
  %68 = load %struct.vhost_msg_node*, %struct.vhost_msg_node** %8, align 8
  %69 = icmp ne %struct.vhost_msg_node* %68, null
  br i1 %69, label %70, label %112

70:                                               ; preds = %67
  %71 = load %struct.vhost_msg_node*, %struct.vhost_msg_node** %8, align 8
  %72 = getelementptr inbounds %struct.vhost_msg_node, %struct.vhost_msg_node* %71, i32 0, i32 1
  %73 = bitcast %struct.TYPE_3__* %72 to i8*
  store i8* %73, i8** %12, align 8
  %74 = load %struct.vhost_msg_node*, %struct.vhost_msg_node** %8, align 8
  %75 = getelementptr inbounds %struct.vhost_msg_node, %struct.vhost_msg_node* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  switch i32 %77, label %86 [
    i32 129, label %78
    i32 128, label %82
  ]

78:                                               ; preds = %70
  store i32 16, i32* %10, align 4
  %79 = load %struct.vhost_msg_node*, %struct.vhost_msg_node** %8, align 8
  %80 = getelementptr inbounds %struct.vhost_msg_node, %struct.vhost_msg_node* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  store %struct.vhost_iotlb_msg* %81, %struct.vhost_iotlb_msg** %11, align 8
  br label %88

82:                                               ; preds = %70
  store i32 8, i32* %10, align 4
  %83 = load %struct.vhost_msg_node*, %struct.vhost_msg_node** %8, align 8
  %84 = getelementptr inbounds %struct.vhost_msg_node, %struct.vhost_msg_node* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  store %struct.vhost_iotlb_msg* %85, %struct.vhost_iotlb_msg** %11, align 8
  br label %88

86:                                               ; preds = %70
  %87 = call i32 (...) @BUG()
  br label %88

88:                                               ; preds = %86, %82, %78
  %89 = load i8*, i8** %12, align 8
  %90 = load i32, i32* %10, align 4
  %91 = load %struct.iov_iter*, %struct.iov_iter** %6, align 8
  %92 = call i32 @copy_to_iter(i8* %89, i32 %90, %struct.iov_iter* %91)
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* %10, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %102, label %96

96:                                               ; preds = %88
  %97 = load %struct.vhost_iotlb_msg*, %struct.vhost_iotlb_msg** %11, align 8
  %98 = getelementptr inbounds %struct.vhost_iotlb_msg, %struct.vhost_iotlb_msg* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @VHOST_IOTLB_MISS, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %96, %88
  %103 = load %struct.vhost_msg_node*, %struct.vhost_msg_node** %8, align 8
  %104 = call i32 @kfree(%struct.vhost_msg_node* %103)
  %105 = load i32, i32* %9, align 4
  store i32 %105, i32* %4, align 4
  br label %114

106:                                              ; preds = %96
  %107 = load %struct.vhost_dev*, %struct.vhost_dev** %5, align 8
  %108 = load %struct.vhost_dev*, %struct.vhost_dev** %5, align 8
  %109 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %108, i32 0, i32 0
  %110 = load %struct.vhost_msg_node*, %struct.vhost_msg_node** %8, align 8
  %111 = call i32 @vhost_enqueue_msg(%struct.vhost_dev* %107, i32* %109, %struct.vhost_msg_node* %110)
  br label %112

112:                                              ; preds = %106, %67
  %113 = load i32, i32* %9, align 4
  store i32 %113, i32* %4, align 4
  br label %114

114:                                              ; preds = %112, %102, %19
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @iov_iter_count(%struct.iov_iter*) #1

declare dso_local i32 @prepare_to_wait(i32*, i32*, i32) #1

declare dso_local %struct.vhost_msg_node* @vhost_dequeue_msg(%struct.vhost_dev*, i32*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @copy_to_iter(i8*, i32, %struct.iov_iter*) #1

declare dso_local i32 @kfree(%struct.vhost_msg_node*) #1

declare dso_local i32 @vhost_enqueue_msg(%struct.vhost_dev*, i32*, %struct.vhost_msg_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
