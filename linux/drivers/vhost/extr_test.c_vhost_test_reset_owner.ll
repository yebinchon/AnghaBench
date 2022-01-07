; ModuleID = '/home/carl/AnghaBench/linux/drivers/vhost/extr_test.c_vhost_test_reset_owner.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vhost/extr_test.c_vhost_test_reset_owner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_test = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.vhost_umem = type { i32 }

@ENOMEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.vhost_test*)* @vhost_test_reset_owner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vhost_test_reset_owner(%struct.vhost_test* %0) #0 {
  %2 = alloca %struct.vhost_test*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.vhost_umem*, align 8
  store %struct.vhost_test* %0, %struct.vhost_test** %2, align 8
  store i8* null, i8** %3, align 8
  %6 = load %struct.vhost_test*, %struct.vhost_test** %2, align 8
  %7 = getelementptr inbounds %struct.vhost_test, %struct.vhost_test* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.vhost_test*, %struct.vhost_test** %2, align 8
  %11 = getelementptr inbounds %struct.vhost_test, %struct.vhost_test* %10, i32 0, i32 0
  %12 = call i64 @vhost_dev_check_owner(%struct.TYPE_4__* %11)
  store i64 %12, i64* %4, align 8
  %13 = load i64, i64* %4, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %35

16:                                               ; preds = %1
  %17 = call %struct.vhost_umem* (...) @vhost_dev_reset_owner_prepare()
  store %struct.vhost_umem* %17, %struct.vhost_umem** %5, align 8
  %18 = load %struct.vhost_umem*, %struct.vhost_umem** %5, align 8
  %19 = icmp ne %struct.vhost_umem* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load i64, i64* @ENOMEM, align 8
  %22 = sub nsw i64 0, %21
  store i64 %22, i64* %4, align 8
  br label %35

23:                                               ; preds = %16
  %24 = load %struct.vhost_test*, %struct.vhost_test** %2, align 8
  %25 = call i32 @vhost_test_stop(%struct.vhost_test* %24, i8** %3)
  %26 = load %struct.vhost_test*, %struct.vhost_test** %2, align 8
  %27 = call i32 @vhost_test_flush(%struct.vhost_test* %26)
  %28 = load %struct.vhost_test*, %struct.vhost_test** %2, align 8
  %29 = getelementptr inbounds %struct.vhost_test, %struct.vhost_test* %28, i32 0, i32 0
  %30 = call i32 @vhost_dev_stop(%struct.TYPE_4__* %29)
  %31 = load %struct.vhost_test*, %struct.vhost_test** %2, align 8
  %32 = getelementptr inbounds %struct.vhost_test, %struct.vhost_test* %31, i32 0, i32 0
  %33 = load %struct.vhost_umem*, %struct.vhost_umem** %5, align 8
  %34 = call i32 @vhost_dev_reset_owner(%struct.TYPE_4__* %32, %struct.vhost_umem* %33)
  br label %35

35:                                               ; preds = %23, %20, %15
  %36 = load %struct.vhost_test*, %struct.vhost_test** %2, align 8
  %37 = getelementptr inbounds %struct.vhost_test, %struct.vhost_test* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = call i32 @mutex_unlock(i32* %38)
  %40 = load i64, i64* %4, align 8
  ret i64 %40
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @vhost_dev_check_owner(%struct.TYPE_4__*) #1

declare dso_local %struct.vhost_umem* @vhost_dev_reset_owner_prepare(...) #1

declare dso_local i32 @vhost_test_stop(%struct.vhost_test*, i8**) #1

declare dso_local i32 @vhost_test_flush(%struct.vhost_test*) #1

declare dso_local i32 @vhost_dev_stop(%struct.TYPE_4__*) #1

declare dso_local i32 @vhost_dev_reset_owner(%struct.TYPE_4__*, %struct.vhost_umem*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
