; ModuleID = '/home/carl/AnghaBench/linux/drivers/vhost/extr_test.c_vhost_test_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vhost/extr_test.c_vhost_test_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.vhost_test* }
%struct.vhost_test = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @vhost_test_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vhost_test_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.vhost_test*, align 8
  %6 = alloca i8*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %7 = load %struct.file*, %struct.file** %4, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load %struct.vhost_test*, %struct.vhost_test** %8, align 8
  store %struct.vhost_test* %9, %struct.vhost_test** %5, align 8
  %10 = load %struct.vhost_test*, %struct.vhost_test** %5, align 8
  %11 = call i32 @vhost_test_stop(%struct.vhost_test* %10, i8** %6)
  %12 = load %struct.vhost_test*, %struct.vhost_test** %5, align 8
  %13 = call i32 @vhost_test_flush(%struct.vhost_test* %12)
  %14 = load %struct.vhost_test*, %struct.vhost_test** %5, align 8
  %15 = getelementptr inbounds %struct.vhost_test, %struct.vhost_test* %14, i32 0, i32 0
  %16 = call i32 @vhost_dev_stop(i32* %15)
  %17 = load %struct.vhost_test*, %struct.vhost_test** %5, align 8
  %18 = getelementptr inbounds %struct.vhost_test, %struct.vhost_test* %17, i32 0, i32 0
  %19 = call i32 @vhost_dev_cleanup(i32* %18)
  %20 = load %struct.vhost_test*, %struct.vhost_test** %5, align 8
  %21 = call i32 @vhost_test_flush(%struct.vhost_test* %20)
  %22 = load %struct.vhost_test*, %struct.vhost_test** %5, align 8
  %23 = call i32 @kfree(%struct.vhost_test* %22)
  ret i32 0
}

declare dso_local i32 @vhost_test_stop(%struct.vhost_test*, i8**) #1

declare dso_local i32 @vhost_test_flush(%struct.vhost_test*) #1

declare dso_local i32 @vhost_dev_stop(i32*) #1

declare dso_local i32 @vhost_dev_cleanup(i32*) #1

declare dso_local i32 @kfree(%struct.vhost_test*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
