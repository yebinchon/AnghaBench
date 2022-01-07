; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/extr_port100.c_port100_send_cmd_async.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/extr_port100.c_port100_send_cmd_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port100 = type { %struct.port100_cmd*, %struct.TYPE_2__* }
%struct.port100_cmd = type { i32, i8*, i32, %struct.sk_buff*, %struct.sk_buff*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }

@PORT100_FRAME_HEADER_LEN = common dso_local global i32 0, align 4
@PORT100_FRAME_MAX_PAYLOAD_LEN = common dso_local global i32 0, align 4
@PORT100_FRAME_TAIL_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"A command is still in process\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.port100*, i32, %struct.sk_buff*, i32, i8*)* @port100_send_cmd_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @port100_send_cmd_async(%struct.port100* %0, i32 %1, %struct.sk_buff* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.port100*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.port100_cmd*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.port100* %0, %struct.port100** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %16 = load i32, i32* @PORT100_FRAME_HEADER_LEN, align 4
  %17 = load i32, i32* @PORT100_FRAME_MAX_PAYLOAD_LEN, align 4
  %18 = add nsw i32 %16, %17
  %19 = load i32, i32* @PORT100_FRAME_TAIL_LEN, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, i32* %15, align 4
  %21 = load %struct.port100*, %struct.port100** %7, align 8
  %22 = getelementptr inbounds %struct.port100, %struct.port100* %21, i32 0, i32 0
  %23 = load %struct.port100_cmd*, %struct.port100_cmd** %22, align 8
  %24 = icmp ne %struct.port100_cmd* %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %5
  %26 = load %struct.port100*, %struct.port100** %7, align 8
  %27 = getelementptr inbounds %struct.port100, %struct.port100* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 @nfc_err(i32* %29, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @EBUSY, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %94

33:                                               ; preds = %5
  %34 = load i32, i32* %15, align 4
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.sk_buff* @alloc_skb(i32 %34, i32 %35)
  store %struct.sk_buff* %36, %struct.sk_buff** %13, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %38 = icmp ne %struct.sk_buff* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %6, align 4
  br label %94

42:                                               ; preds = %33
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call %struct.port100_cmd* @kzalloc(i32 48, i32 %43)
  store %struct.port100_cmd* %44, %struct.port100_cmd** %12, align 8
  %45 = load %struct.port100_cmd*, %struct.port100_cmd** %12, align 8
  %46 = icmp ne %struct.port100_cmd* %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %49 = call i32 @dev_kfree_skb(%struct.sk_buff* %48)
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %6, align 4
  br label %94

52:                                               ; preds = %42
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.port100_cmd*, %struct.port100_cmd** %12, align 8
  %55 = getelementptr inbounds %struct.port100_cmd, %struct.port100_cmd* %54, i32 0, i32 5
  store i32 %53, i32* %55, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %57 = load %struct.port100_cmd*, %struct.port100_cmd** %12, align 8
  %58 = getelementptr inbounds %struct.port100_cmd, %struct.port100_cmd* %57, i32 0, i32 4
  store %struct.sk_buff* %56, %struct.sk_buff** %58, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %60 = load %struct.port100_cmd*, %struct.port100_cmd** %12, align 8
  %61 = getelementptr inbounds %struct.port100_cmd, %struct.port100_cmd* %60, i32 0, i32 3
  store %struct.sk_buff* %59, %struct.sk_buff** %61, align 8
  %62 = load i32, i32* %15, align 4
  %63 = load %struct.port100_cmd*, %struct.port100_cmd** %12, align 8
  %64 = getelementptr inbounds %struct.port100_cmd, %struct.port100_cmd* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* %10, align 4
  %66 = load %struct.port100_cmd*, %struct.port100_cmd** %12, align 8
  %67 = getelementptr inbounds %struct.port100_cmd, %struct.port100_cmd* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  %68 = load i8*, i8** %11, align 8
  %69 = load %struct.port100_cmd*, %struct.port100_cmd** %12, align 8
  %70 = getelementptr inbounds %struct.port100_cmd, %struct.port100_cmd* %69, i32 0, i32 1
  store i8* %68, i8** %70, align 8
  %71 = load %struct.port100*, %struct.port100** %7, align 8
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %74 = call i32 @port100_build_cmd_frame(%struct.port100* %71, i32 %72, %struct.sk_buff* %73)
  %75 = load %struct.port100_cmd*, %struct.port100_cmd** %12, align 8
  %76 = load %struct.port100*, %struct.port100** %7, align 8
  %77 = getelementptr inbounds %struct.port100, %struct.port100* %76, i32 0, i32 0
  store %struct.port100_cmd* %75, %struct.port100_cmd** %77, align 8
  %78 = load %struct.port100*, %struct.port100** %7, align 8
  %79 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %80 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %81 = load i32, i32* %15, align 4
  %82 = call i32 @port100_send_frame_async(%struct.port100* %78, %struct.sk_buff* %79, %struct.sk_buff* %80, i32 %81)
  store i32 %82, i32* %14, align 4
  %83 = load i32, i32* %14, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %52
  %86 = load %struct.port100_cmd*, %struct.port100_cmd** %12, align 8
  %87 = call i32 @kfree(%struct.port100_cmd* %86)
  %88 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %89 = call i32 @dev_kfree_skb(%struct.sk_buff* %88)
  %90 = load %struct.port100*, %struct.port100** %7, align 8
  %91 = getelementptr inbounds %struct.port100, %struct.port100* %90, i32 0, i32 0
  store %struct.port100_cmd* null, %struct.port100_cmd** %91, align 8
  br label %92

92:                                               ; preds = %85, %52
  %93 = load i32, i32* %14, align 4
  store i32 %93, i32* %6, align 4
  br label %94

94:                                               ; preds = %92, %47, %39, %25
  %95 = load i32, i32* %6, align 4
  ret i32 %95
}

declare dso_local i32 @nfc_err(i32*, i8*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local %struct.port100_cmd* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @port100_build_cmd_frame(%struct.port100*, i32, %struct.sk_buff*) #1

declare dso_local i32 @port100_send_frame_async(%struct.port100*, %struct.sk_buff*, %struct.sk_buff*, i32) #1

declare dso_local i32 @kfree(%struct.port100_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
