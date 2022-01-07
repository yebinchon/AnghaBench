; ModuleID = '/home/carl/AnghaBench/linux/drivers/parport/extr_share.c_parport_remove_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/parport/extr_share.c_parport_remove_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parport = type { %struct.parport**, i32, i32* }

@registration_lock = common dso_local global i32 0, align 4
@dead_ops = common dso_local global i32 0, align 4
@parportlist_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parport_remove_port(%struct.parport* %0) #0 {
  %2 = alloca %struct.parport*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.parport*, align 8
  %5 = alloca %struct.parport*, align 8
  store %struct.parport* %0, %struct.parport** %2, align 8
  %6 = call i32 @mutex_lock(i32* @registration_lock)
  %7 = load %struct.parport*, %struct.parport** %2, align 8
  %8 = call i32 @detach_driver_chain(%struct.parport* %7)
  %9 = load %struct.parport*, %struct.parport** %2, align 8
  %10 = getelementptr inbounds %struct.parport, %struct.parport* %9, i32 0, i32 2
  store i32* @dead_ops, i32** %10, align 8
  %11 = call i32 @spin_lock(i32* @parportlist_lock)
  %12 = load %struct.parport*, %struct.parport** %2, align 8
  %13 = getelementptr inbounds %struct.parport, %struct.parport* %12, i32 0, i32 1
  %14 = call i32 @list_del_init(i32* %13)
  store i32 1, i32* %3, align 4
  br label %15

15:                                               ; preds = %34, %1
  %16 = load i32, i32* %3, align 4
  %17 = icmp slt i32 %16, 3
  br i1 %17, label %18, label %37

18:                                               ; preds = %15
  %19 = load %struct.parport*, %struct.parport** %2, align 8
  %20 = getelementptr inbounds %struct.parport, %struct.parport* %19, i32 0, i32 0
  %21 = load %struct.parport**, %struct.parport*** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.parport*, %struct.parport** %21, i64 %24
  %26 = load %struct.parport*, %struct.parport** %25, align 8
  store %struct.parport* %26, %struct.parport** %4, align 8
  %27 = load %struct.parport*, %struct.parport** %4, align 8
  %28 = icmp ne %struct.parport* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %18
  %30 = load %struct.parport*, %struct.parport** %4, align 8
  %31 = getelementptr inbounds %struct.parport, %struct.parport* %30, i32 0, i32 1
  %32 = call i32 @list_del_init(i32* %31)
  br label %33

33:                                               ; preds = %29, %18
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %15

37:                                               ; preds = %15
  %38 = call i32 @spin_unlock(i32* @parportlist_lock)
  %39 = call i32 @mutex_unlock(i32* @registration_lock)
  %40 = load %struct.parport*, %struct.parport** %2, align 8
  %41 = call i32 @parport_proc_unregister(%struct.parport* %40)
  store i32 1, i32* %3, align 4
  br label %42

42:                                               ; preds = %60, %37
  %43 = load i32, i32* %3, align 4
  %44 = icmp slt i32 %43, 3
  br i1 %44, label %45, label %63

45:                                               ; preds = %42
  %46 = load %struct.parport*, %struct.parport** %2, align 8
  %47 = getelementptr inbounds %struct.parport, %struct.parport* %46, i32 0, i32 0
  %48 = load %struct.parport**, %struct.parport*** %47, align 8
  %49 = load i32, i32* %3, align 4
  %50 = sub nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.parport*, %struct.parport** %48, i64 %51
  %53 = load %struct.parport*, %struct.parport** %52, align 8
  store %struct.parport* %53, %struct.parport** %5, align 8
  %54 = load %struct.parport*, %struct.parport** %5, align 8
  %55 = icmp ne %struct.parport* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %45
  %57 = load %struct.parport*, %struct.parport** %5, align 8
  %58 = call i32 @parport_put_port(%struct.parport* %57)
  br label %59

59:                                               ; preds = %56, %45
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %3, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %3, align 4
  br label %42

63:                                               ; preds = %42
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @detach_driver_chain(%struct.parport*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @parport_proc_unregister(%struct.parport*) #1

declare dso_local i32 @parport_put_port(%struct.parport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
