; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/net/extr_net.c_comp_disconnect_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/net/extr_net.c_comp_disconnect_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.most_interface = type { i32 }
%struct.net_dev_context = type { i32, i32, %struct.net_dev_channel, %struct.net_dev_channel }
%struct.net_dev_channel = type { i32, i32 }

@probe_disc_mt = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@list_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.most_interface*, i32)* @comp_disconnect_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @comp_disconnect_channel(%struct.most_interface* %0, i32 %1) #0 {
  %3 = alloca %struct.most_interface*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_dev_context*, align 8
  %6 = alloca %struct.net_dev_channel*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.most_interface* %0, %struct.most_interface** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %8, align 4
  %9 = call i32 @mutex_lock(i32* @probe_disc_mt)
  %10 = load %struct.most_interface*, %struct.most_interface** %3, align 8
  %11 = call %struct.net_dev_context* @get_net_dev(%struct.most_interface* %10)
  store %struct.net_dev_context* %11, %struct.net_dev_context** %5, align 8
  %12 = load %struct.net_dev_context*, %struct.net_dev_context** %5, align 8
  %13 = icmp ne %struct.net_dev_context* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %8, align 4
  br label %89

17:                                               ; preds = %2
  %18 = load %struct.net_dev_context*, %struct.net_dev_context** %5, align 8
  %19 = getelementptr inbounds %struct.net_dev_context, %struct.net_dev_context* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.net_dev_channel, %struct.net_dev_channel* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %17
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.net_dev_context*, %struct.net_dev_context** %5, align 8
  %26 = getelementptr inbounds %struct.net_dev_context, %struct.net_dev_context* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.net_dev_channel, %struct.net_dev_channel* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %24, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load %struct.net_dev_context*, %struct.net_dev_context** %5, align 8
  %32 = getelementptr inbounds %struct.net_dev_context, %struct.net_dev_context* %31, i32 0, i32 3
  store %struct.net_dev_channel* %32, %struct.net_dev_channel** %6, align 8
  br label %53

33:                                               ; preds = %23, %17
  %34 = load %struct.net_dev_context*, %struct.net_dev_context** %5, align 8
  %35 = getelementptr inbounds %struct.net_dev_context, %struct.net_dev_context* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.net_dev_channel, %struct.net_dev_channel* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %33
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.net_dev_context*, %struct.net_dev_context** %5, align 8
  %42 = getelementptr inbounds %struct.net_dev_context, %struct.net_dev_context* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.net_dev_channel, %struct.net_dev_channel* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %40, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load %struct.net_dev_context*, %struct.net_dev_context** %5, align 8
  %48 = getelementptr inbounds %struct.net_dev_context, %struct.net_dev_context* %47, i32 0, i32 2
  store %struct.net_dev_channel* %48, %struct.net_dev_channel** %6, align 8
  br label %52

49:                                               ; preds = %39, %33
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %8, align 4
  br label %89

52:                                               ; preds = %46
  br label %53

53:                                               ; preds = %52, %30
  %54 = load %struct.net_dev_context*, %struct.net_dev_context** %5, align 8
  %55 = getelementptr inbounds %struct.net_dev_context, %struct.net_dev_context* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.net_dev_channel, %struct.net_dev_channel* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %76

59:                                               ; preds = %53
  %60 = load %struct.net_dev_context*, %struct.net_dev_context** %5, align 8
  %61 = getelementptr inbounds %struct.net_dev_context, %struct.net_dev_context* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.net_dev_channel, %struct.net_dev_channel* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %59
  %66 = load i64, i64* %7, align 8
  %67 = call i32 @spin_lock_irqsave(i32* @list_lock, i64 %66)
  %68 = load %struct.net_dev_channel*, %struct.net_dev_channel** %6, align 8
  %69 = getelementptr inbounds %struct.net_dev_channel, %struct.net_dev_channel* %68, i32 0, i32 0
  store i32 0, i32* %69, align 4
  %70 = load i64, i64* %7, align 8
  %71 = call i32 @spin_unlock_irqrestore(i32* @list_lock, i64 %70)
  %72 = load %struct.net_dev_context*, %struct.net_dev_context** %5, align 8
  %73 = getelementptr inbounds %struct.net_dev_context, %struct.net_dev_context* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @unregister_netdev(i32 %74)
  br label %88

76:                                               ; preds = %59, %53
  %77 = load i64, i64* %7, align 8
  %78 = call i32 @spin_lock_irqsave(i32* @list_lock, i64 %77)
  %79 = load %struct.net_dev_context*, %struct.net_dev_context** %5, align 8
  %80 = getelementptr inbounds %struct.net_dev_context, %struct.net_dev_context* %79, i32 0, i32 1
  %81 = call i32 @list_del(i32* %80)
  %82 = load i64, i64* %7, align 8
  %83 = call i32 @spin_unlock_irqrestore(i32* @list_lock, i64 %82)
  %84 = load %struct.net_dev_context*, %struct.net_dev_context** %5, align 8
  %85 = getelementptr inbounds %struct.net_dev_context, %struct.net_dev_context* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @free_netdev(i32 %86)
  br label %88

88:                                               ; preds = %76, %65
  br label %89

89:                                               ; preds = %88, %49, %14
  %90 = call i32 @mutex_unlock(i32* @probe_disc_mt)
  %91 = load i32, i32* %8, align 4
  ret i32 %91
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.net_dev_context* @get_net_dev(%struct.most_interface*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @unregister_netdev(i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @free_netdev(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
