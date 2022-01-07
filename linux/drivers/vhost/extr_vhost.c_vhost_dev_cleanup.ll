; ModuleID = '/home/carl/AnghaBench/linux/drivers/vhost/extr_vhost.c_vhost_dev_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vhost/extr_vhost.c_vhost_dev_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_dev = type { i32, i32*, i32*, i32, i32, i32*, i32*, i32*, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32*, i64, i32* }

@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vhost_dev_cleanup(%struct.vhost_dev* %0) #0 {
  %2 = alloca %struct.vhost_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.vhost_dev* %0, %struct.vhost_dev** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %86, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.vhost_dev*, %struct.vhost_dev** %2, align 8
  %7 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp slt i32 %5, %8
  br i1 %9, label %10, label %89

10:                                               ; preds = %4
  %11 = load %struct.vhost_dev*, %struct.vhost_dev** %2, align 8
  %12 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %11, i32 0, i32 8
  %13 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %13, i64 %15
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %10
  %22 = load %struct.vhost_dev*, %struct.vhost_dev** %2, align 8
  %23 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %22, i32 0, i32 8
  %24 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %24, i64 %26
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @eventfd_ctx_put(i32* %30)
  br label %32

32:                                               ; preds = %21, %10
  %33 = load %struct.vhost_dev*, %struct.vhost_dev** %2, align 8
  %34 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %33, i32 0, i32 8
  %35 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %35, i64 %37
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %32
  %44 = load %struct.vhost_dev*, %struct.vhost_dev** %2, align 8
  %45 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %44, i32 0, i32 8
  %46 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %45, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %46, i64 %48
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @fput(i64 %52)
  br label %54

54:                                               ; preds = %43, %32
  %55 = load %struct.vhost_dev*, %struct.vhost_dev** %2, align 8
  %56 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %55, i32 0, i32 8
  %57 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %56, align 8
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %57, i64 %59
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %76

65:                                               ; preds = %54
  %66 = load %struct.vhost_dev*, %struct.vhost_dev** %2, align 8
  %67 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %66, i32 0, i32 8
  %68 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %67, align 8
  %69 = load i32, i32* %3, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %68, i64 %70
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @eventfd_ctx_put(i32* %74)
  br label %76

76:                                               ; preds = %65, %54
  %77 = load %struct.vhost_dev*, %struct.vhost_dev** %2, align 8
  %78 = load %struct.vhost_dev*, %struct.vhost_dev** %2, align 8
  %79 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %78, i32 0, i32 8
  %80 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %79, align 8
  %81 = load i32, i32* %3, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %80, i64 %82
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = call i32 @vhost_vq_reset(%struct.vhost_dev* %77, %struct.TYPE_2__* %84)
  br label %86

86:                                               ; preds = %76
  %87 = load i32, i32* %3, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %3, align 4
  br label %4

89:                                               ; preds = %4
  %90 = load %struct.vhost_dev*, %struct.vhost_dev** %2, align 8
  %91 = call i32 @vhost_dev_free_iovecs(%struct.vhost_dev* %90)
  %92 = load %struct.vhost_dev*, %struct.vhost_dev** %2, align 8
  %93 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %92, i32 0, i32 7
  %94 = load i32*, i32** %93, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %96, label %101

96:                                               ; preds = %89
  %97 = load %struct.vhost_dev*, %struct.vhost_dev** %2, align 8
  %98 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %97, i32 0, i32 7
  %99 = load i32*, i32** %98, align 8
  %100 = call i32 @eventfd_ctx_put(i32* %99)
  br label %101

101:                                              ; preds = %96, %89
  %102 = load %struct.vhost_dev*, %struct.vhost_dev** %2, align 8
  %103 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %102, i32 0, i32 7
  store i32* null, i32** %103, align 8
  %104 = load %struct.vhost_dev*, %struct.vhost_dev** %2, align 8
  %105 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %104, i32 0, i32 6
  %106 = load i32*, i32** %105, align 8
  %107 = call i32 @vhost_umem_clean(i32* %106)
  %108 = load %struct.vhost_dev*, %struct.vhost_dev** %2, align 8
  %109 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %108, i32 0, i32 6
  store i32* null, i32** %109, align 8
  %110 = load %struct.vhost_dev*, %struct.vhost_dev** %2, align 8
  %111 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %110, i32 0, i32 5
  %112 = load i32*, i32** %111, align 8
  %113 = call i32 @vhost_umem_clean(i32* %112)
  %114 = load %struct.vhost_dev*, %struct.vhost_dev** %2, align 8
  %115 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %114, i32 0, i32 5
  store i32* null, i32** %115, align 8
  %116 = load %struct.vhost_dev*, %struct.vhost_dev** %2, align 8
  %117 = call i32 @vhost_clear_msg(%struct.vhost_dev* %116)
  %118 = load %struct.vhost_dev*, %struct.vhost_dev** %2, align 8
  %119 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %118, i32 0, i32 4
  %120 = load i32, i32* @EPOLLIN, align 4
  %121 = load i32, i32* @EPOLLRDNORM, align 4
  %122 = or i32 %120, %121
  %123 = call i32 @wake_up_interruptible_poll(i32* %119, i32 %122)
  %124 = load %struct.vhost_dev*, %struct.vhost_dev** %2, align 8
  %125 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %124, i32 0, i32 3
  %126 = call i32 @llist_empty(i32* %125)
  %127 = icmp ne i32 %126, 0
  %128 = xor i1 %127, true
  %129 = zext i1 %128 to i32
  %130 = call i32 @WARN_ON(i32 %129)
  %131 = load %struct.vhost_dev*, %struct.vhost_dev** %2, align 8
  %132 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %131, i32 0, i32 2
  %133 = load i32*, i32** %132, align 8
  %134 = icmp ne i32* %133, null
  br i1 %134, label %135, label %142

135:                                              ; preds = %101
  %136 = load %struct.vhost_dev*, %struct.vhost_dev** %2, align 8
  %137 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %136, i32 0, i32 2
  %138 = load i32*, i32** %137, align 8
  %139 = call i32 @kthread_stop(i32* %138)
  %140 = load %struct.vhost_dev*, %struct.vhost_dev** %2, align 8
  %141 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %140, i32 0, i32 2
  store i32* null, i32** %141, align 8
  br label %142

142:                                              ; preds = %135, %101
  %143 = load %struct.vhost_dev*, %struct.vhost_dev** %2, align 8
  %144 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = icmp ne i32* %145, null
  br i1 %146, label %147, label %152

147:                                              ; preds = %142
  %148 = load %struct.vhost_dev*, %struct.vhost_dev** %2, align 8
  %149 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = call i32 @mmput(i32* %150)
  br label %152

152:                                              ; preds = %147, %142
  %153 = load %struct.vhost_dev*, %struct.vhost_dev** %2, align 8
  %154 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %153, i32 0, i32 1
  store i32* null, i32** %154, align 8
  ret void
}

declare dso_local i32 @eventfd_ctx_put(i32*) #1

declare dso_local i32 @fput(i64) #1

declare dso_local i32 @vhost_vq_reset(%struct.vhost_dev*, %struct.TYPE_2__*) #1

declare dso_local i32 @vhost_dev_free_iovecs(%struct.vhost_dev*) #1

declare dso_local i32 @vhost_umem_clean(i32*) #1

declare dso_local i32 @vhost_clear_msg(%struct.vhost_dev*) #1

declare dso_local i32 @wake_up_interruptible_poll(i32*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @llist_empty(i32*) #1

declare dso_local i32 @kthread_stop(i32*) #1

declare dso_local i32 @mmput(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
