; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_dev.c_ast_vhub_dev_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_dev.c_ast_vhub_dev_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ast_vhub_dev = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (i32*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ast_vhub_dev_resume(%struct.ast_vhub_dev* %0) #0 {
  %2 = alloca %struct.ast_vhub_dev*, align 8
  store %struct.ast_vhub_dev* %0, %struct.ast_vhub_dev** %2, align 8
  %3 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %2, align 8
  %4 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %3, i32 0, i32 2
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = icmp ne %struct.TYPE_3__* %5, null
  br i1 %6, label %7, label %33

7:                                                ; preds = %1
  %8 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %2, align 8
  %9 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %8, i32 0, i32 2
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32 (i32*)*, i32 (i32*)** %11, align 8
  %13 = icmp ne i32 (i32*)* %12, null
  br i1 %13, label %14, label %33

14:                                               ; preds = %7
  %15 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %2, align 8
  %16 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = call i32 @spin_unlock(i32* %18)
  %20 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %2, align 8
  %21 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %20, i32 0, i32 2
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32 (i32*)*, i32 (i32*)** %23, align 8
  %25 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %2, align 8
  %26 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %25, i32 0, i32 1
  %27 = call i32 %24(i32* %26)
  %28 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %2, align 8
  %29 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = call i32 @spin_lock(i32* %31)
  br label %33

33:                                               ; preds = %14, %7, %1
  ret void
}

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
