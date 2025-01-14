; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_proto.c_cros_ec_prepare_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_proto.c_cros_ec_prepare_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cros_ec_device = type { i32, i32* }
%struct.cros_ec_command = type { i32, i32, i32, i32* }

@EC_PROTO2_MAX_PARAM_SIZE = common dso_local global i32 0, align 4
@EC_CMD_VERSION0 = common dso_local global i32 0, align 4
@EC_MSG_TX_HEADER_BYTES = common dso_local global i32 0, align 4
@EC_MSG_TX_PROTO_BYTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cros_ec_prepare_tx(%struct.cros_ec_device* %0, %struct.cros_ec_command* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cros_ec_device*, align 8
  %5 = alloca %struct.cros_ec_command*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cros_ec_device* %0, %struct.cros_ec_device** %4, align 8
  store %struct.cros_ec_command* %1, %struct.cros_ec_command** %5, align 8
  %9 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %10 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp sgt i32 %11, 2
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %15 = load %struct.cros_ec_command*, %struct.cros_ec_command** %5, align 8
  %16 = call i32 @prepare_packet(%struct.cros_ec_device* %14, %struct.cros_ec_command* %15)
  store i32 %16, i32* %3, align 4
  br label %96

17:                                               ; preds = %2
  %18 = load %struct.cros_ec_command*, %struct.cros_ec_command** %5, align 8
  %19 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @EC_PROTO2_MAX_PARAM_SIZE, align 4
  %22 = icmp sgt i32 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %26 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %6, align 8
  %28 = load i32, i32* @EC_CMD_VERSION0, align 4
  %29 = load %struct.cros_ec_command*, %struct.cros_ec_command** %5, align 8
  %30 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %28, %31
  %33 = load i32*, i32** %6, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.cros_ec_command*, %struct.cros_ec_command** %5, align 8
  %36 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.cros_ec_command*, %struct.cros_ec_command** %5, align 8
  %41 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 2
  store i32 %42, i32* %44, align 4
  %45 = load i32*, i32** %6, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %6, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %47, %50
  %52 = load i32*, i32** %6, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 2
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %51, %54
  store i32 %55, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %56

56:                                               ; preds = %78, %17
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.cros_ec_command*, %struct.cros_ec_command** %5, align 8
  %59 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %81

62:                                               ; preds = %56
  %63 = load %struct.cros_ec_command*, %struct.cros_ec_command** %5, align 8
  %64 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %63, i32 0, i32 3
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %6, align 8
  %71 = load i32, i32* @EC_MSG_TX_HEADER_BYTES, align 4
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %71, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %70, i64 %74
  store i32 %69, i32* %75, align 4
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, %69
  store i32 %77, i32* %7, align 4
  br label %78

78:                                               ; preds = %62
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %8, align 4
  br label %56

81:                                               ; preds = %56
  %82 = load i32, i32* %7, align 4
  %83 = load i32*, i32** %6, align 8
  %84 = load i32, i32* @EC_MSG_TX_HEADER_BYTES, align 4
  %85 = load %struct.cros_ec_command*, %struct.cros_ec_command** %5, align 8
  %86 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %84, %87
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %83, i64 %89
  store i32 %82, i32* %90, align 4
  %91 = load i32, i32* @EC_MSG_TX_PROTO_BYTES, align 4
  %92 = load %struct.cros_ec_command*, %struct.cros_ec_command** %5, align 8
  %93 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %91, %94
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %81, %13
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @prepare_packet(%struct.cros_ec_device*, %struct.cros_ec_command*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
