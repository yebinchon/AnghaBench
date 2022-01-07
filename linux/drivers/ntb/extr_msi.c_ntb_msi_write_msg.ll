; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/extr_msi.c_ntb_msi_write_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/extr_msi.c_ntb_msi_write_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msi_desc = type { i32 }
%struct.ntb_msi_devres = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msi_desc*, i8*)* @ntb_msi_write_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ntb_msi_write_msg(%struct.msi_desc* %0, i8* %1) #0 {
  %3 = alloca %struct.msi_desc*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ntb_msi_devres*, align 8
  store %struct.msi_desc* %0, %struct.msi_desc** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.ntb_msi_devres*
  store %struct.ntb_msi_devres* %7, %struct.ntb_msi_devres** %5, align 8
  %8 = load %struct.ntb_msi_devres*, %struct.ntb_msi_devres** %5, align 8
  %9 = getelementptr inbounds %struct.ntb_msi_devres, %struct.ntb_msi_devres* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = load %struct.msi_desc*, %struct.msi_desc** %3, align 8
  %12 = load %struct.ntb_msi_devres*, %struct.ntb_msi_devres** %5, align 8
  %13 = getelementptr inbounds %struct.ntb_msi_devres, %struct.ntb_msi_devres* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @ntb_msi_set_desc(%struct.TYPE_4__* %10, %struct.msi_desc* %11, i32 %14)
  %16 = call i32 @WARN_ON(i32 %15)
  %17 = load %struct.ntb_msi_devres*, %struct.ntb_msi_devres** %5, align 8
  %18 = getelementptr inbounds %struct.ntb_msi_devres, %struct.ntb_msi_devres* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32 (i32)*, i32 (i32)** %22, align 8
  %24 = icmp ne i32 (i32)* %23, null
  br i1 %24, label %25, label %39

25:                                               ; preds = %2
  %26 = load %struct.ntb_msi_devres*, %struct.ntb_msi_devres** %5, align 8
  %27 = getelementptr inbounds %struct.ntb_msi_devres, %struct.ntb_msi_devres* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32 (i32)*, i32 (i32)** %31, align 8
  %33 = load %struct.ntb_msi_devres*, %struct.ntb_msi_devres** %5, align 8
  %34 = getelementptr inbounds %struct.ntb_msi_devres, %struct.ntb_msi_devres* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 %32(i32 %37)
  br label %39

39:                                               ; preds = %25, %2
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @ntb_msi_set_desc(%struct.TYPE_4__*, %struct.msi_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
