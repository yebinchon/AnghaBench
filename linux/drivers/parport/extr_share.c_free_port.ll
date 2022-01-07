; ModuleID = '/home/carl/AnghaBench/linux/drivers/parport/extr_share.c_free_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/parport/extr_share.c_free_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.parport = type { %struct.parport*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.parport*, %struct.parport*, %struct.parport*, %struct.parport*, %struct.parport* }

@full_list_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @free_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_port(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.parport*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.parport* @to_parport_dev(%struct.device* %5)
  store %struct.parport* %6, %struct.parport** %4, align 8
  %7 = call i32 @spin_lock(i32* @full_list_lock)
  %8 = load %struct.parport*, %struct.parport** %4, align 8
  %9 = getelementptr inbounds %struct.parport, %struct.parport* %8, i32 0, i32 2
  %10 = call i32 @list_del(i32* %9)
  %11 = call i32 @spin_unlock(i32* @full_list_lock)
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %61, %1
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %13, 5
  br i1 %14, label %15, label %64

15:                                               ; preds = %12
  %16 = load %struct.parport*, %struct.parport** %4, align 8
  %17 = getelementptr inbounds %struct.parport, %struct.parport* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 4
  %23 = load %struct.parport*, %struct.parport** %22, align 8
  %24 = call i32 @kfree(%struct.parport* %23)
  %25 = load %struct.parport*, %struct.parport** %4, align 8
  %26 = getelementptr inbounds %struct.parport, %struct.parport* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  %32 = load %struct.parport*, %struct.parport** %31, align 8
  %33 = call i32 @kfree(%struct.parport* %32)
  %34 = load %struct.parport*, %struct.parport** %4, align 8
  %35 = getelementptr inbounds %struct.parport, %struct.parport* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load %struct.parport*, %struct.parport** %40, align 8
  %42 = call i32 @kfree(%struct.parport* %41)
  %43 = load %struct.parport*, %struct.parport** %4, align 8
  %44 = getelementptr inbounds %struct.parport, %struct.parport* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load %struct.parport*, %struct.parport** %49, align 8
  %51 = call i32 @kfree(%struct.parport* %50)
  %52 = load %struct.parport*, %struct.parport** %4, align 8
  %53 = getelementptr inbounds %struct.parport, %struct.parport* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load %struct.parport*, %struct.parport** %58, align 8
  %60 = call i32 @kfree(%struct.parport* %59)
  br label %61

61:                                               ; preds = %15
  %62 = load i32, i32* %3, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %3, align 4
  br label %12

64:                                               ; preds = %12
  %65 = load %struct.parport*, %struct.parport** %4, align 8
  %66 = getelementptr inbounds %struct.parport, %struct.parport* %65, i32 0, i32 0
  %67 = load %struct.parport*, %struct.parport** %66, align 8
  %68 = call i32 @kfree(%struct.parport* %67)
  %69 = load %struct.parport*, %struct.parport** %4, align 8
  %70 = call i32 @kfree(%struct.parport* %69)
  ret void
}

declare dso_local %struct.parport* @to_parport_dev(%struct.device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.parport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
