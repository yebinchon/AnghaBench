; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/pn533/extr_pn533.c_pn533_send_cmd_direct_async.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/pn533/extr_pn533.c_pn533_send_cmd_direct_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pn533 = type { %struct.pn533_cmd*, %struct.TYPE_2__* }
%struct.pn533_cmd = type { i8*, i32, %struct.sk_buff*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.pn533*, %struct.sk_buff*)* }
%struct.sk_buff = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pn533*, i32, %struct.sk_buff*, i32, i8*)* @pn533_send_cmd_direct_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pn533_send_cmd_direct_async(%struct.pn533* %0, i32 %1, %struct.sk_buff* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pn533*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.pn533_cmd*, align 8
  %13 = alloca i32, align 4
  store %struct.pn533* %0, %struct.pn533** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.pn533_cmd* @kzalloc(i32 32, i32 %14)
  store %struct.pn533_cmd* %15, %struct.pn533_cmd** %12, align 8
  %16 = load %struct.pn533_cmd*, %struct.pn533_cmd** %12, align 8
  %17 = icmp ne %struct.pn533_cmd* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %58

21:                                               ; preds = %5
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.pn533_cmd*, %struct.pn533_cmd** %12, align 8
  %24 = getelementptr inbounds %struct.pn533_cmd, %struct.pn533_cmd* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %26 = load %struct.pn533_cmd*, %struct.pn533_cmd** %12, align 8
  %27 = getelementptr inbounds %struct.pn533_cmd, %struct.pn533_cmd* %26, i32 0, i32 2
  store %struct.sk_buff* %25, %struct.sk_buff** %27, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.pn533_cmd*, %struct.pn533_cmd** %12, align 8
  %30 = getelementptr inbounds %struct.pn533_cmd, %struct.pn533_cmd* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = load %struct.pn533_cmd*, %struct.pn533_cmd** %12, align 8
  %33 = getelementptr inbounds %struct.pn533_cmd, %struct.pn533_cmd* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  %34 = load %struct.pn533*, %struct.pn533** %7, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %37 = call i32 @pn533_build_cmd_frame(%struct.pn533* %34, i32 %35, %struct.sk_buff* %36)
  %38 = load %struct.pn533_cmd*, %struct.pn533_cmd** %12, align 8
  %39 = load %struct.pn533*, %struct.pn533** %7, align 8
  %40 = getelementptr inbounds %struct.pn533, %struct.pn533* %39, i32 0, i32 0
  store %struct.pn533_cmd* %38, %struct.pn533_cmd** %40, align 8
  %41 = load %struct.pn533*, %struct.pn533** %7, align 8
  %42 = getelementptr inbounds %struct.pn533, %struct.pn533* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32 (%struct.pn533*, %struct.sk_buff*)*, i32 (%struct.pn533*, %struct.sk_buff*)** %44, align 8
  %46 = load %struct.pn533*, %struct.pn533** %7, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %48 = call i32 %45(%struct.pn533* %46, %struct.sk_buff* %47)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %21
  %52 = load %struct.pn533*, %struct.pn533** %7, align 8
  %53 = getelementptr inbounds %struct.pn533, %struct.pn533* %52, i32 0, i32 0
  store %struct.pn533_cmd* null, %struct.pn533_cmd** %53, align 8
  %54 = load %struct.pn533_cmd*, %struct.pn533_cmd** %12, align 8
  %55 = call i32 @kfree(%struct.pn533_cmd* %54)
  br label %56

56:                                               ; preds = %51, %21
  %57 = load i32, i32* %13, align 4
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %56, %18
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local %struct.pn533_cmd* @kzalloc(i32, i32) #1

declare dso_local i32 @pn533_build_cmd_frame(%struct.pn533*, i32, %struct.sk_buff*) #1

declare dso_local i32 @kfree(%struct.pn533_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
