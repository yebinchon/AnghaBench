; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/pn533/extr_pn533.c_pn533_register_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/pn533/extr_pn533.c_pn533_register_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pn533_frame_ops = type { i32, i64 }
%struct.pn533 = type { i32, i32*, i32, %struct.pn533_frame_ops*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.device*, %struct.pn533_phy_ops*, i8* }
%struct.pn533_phy_ops = type { i32 }
%struct.device = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@pn533_std_frame_ops = common dso_local global %struct.pn533_frame_ops zeroinitializer, align 8
@pn533_wq_cmd = common dso_local global i32 0, align 4
@pn533_wq_cmd_complete = common dso_local global i32 0, align 4
@pn533_wq_mi_recv = common dso_local global i32 0, align 4
@pn533_wq_mi_send = common dso_local global i32 0, align 4
@pn533_wq_tg_get_data = common dso_local global i32 0, align 4
@pn533_wq_tm_mi_recv = common dso_local global i32 0, align 4
@pn533_wq_tm_mi_send = common dso_local global i32 0, align 4
@pn533_wq_poll = common dso_local global i32 0, align 4
@pn533_wq_rf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"pn533\00", align 1
@pn533_listen_mode_timer = common dso_local global i32 0, align 4
@pn533_nfc_ops = common dso_local global i32 0, align 4
@PN533_CMD_DATAEXCH_HEAD_LEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pn533* @pn533_register_device(i32 %0, i32 %1, i32 %2, i8* %3, %struct.pn533_phy_ops* %4, %struct.pn533_frame_ops* %5, %struct.device* %6, %struct.device* %7) #0 {
  %9 = alloca %struct.pn533*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.pn533_phy_ops*, align 8
  %15 = alloca %struct.pn533_frame_ops*, align 8
  %16 = alloca %struct.device*, align 8
  %17 = alloca %struct.device*, align 8
  %18 = alloca %struct.pn533*, align 8
  %19 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i8* %3, i8** %13, align 8
  store %struct.pn533_phy_ops* %4, %struct.pn533_phy_ops** %14, align 8
  store %struct.pn533_frame_ops* %5, %struct.pn533_frame_ops** %15, align 8
  store %struct.device* %6, %struct.device** %16, align 8
  store %struct.device* %7, %struct.device** %17, align 8
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %19, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.pn533* @kzalloc(i32 120, i32 %22)
  store %struct.pn533* %23, %struct.pn533** %18, align 8
  %24 = load %struct.pn533*, %struct.pn533** %18, align 8
  %25 = icmp ne %struct.pn533* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %8
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  %29 = call %struct.pn533* @ERR_PTR(i32 %28)
  store %struct.pn533* %29, %struct.pn533** %9, align 8
  br label %175

30:                                               ; preds = %8
  %31 = load i8*, i8** %13, align 8
  %32 = load %struct.pn533*, %struct.pn533** %18, align 8
  %33 = getelementptr inbounds %struct.pn533, %struct.pn533* %32, i32 0, i32 21
  store i8* %31, i8** %33, align 8
  %34 = load %struct.pn533_phy_ops*, %struct.pn533_phy_ops** %14, align 8
  %35 = load %struct.pn533*, %struct.pn533** %18, align 8
  %36 = getelementptr inbounds %struct.pn533, %struct.pn533* %35, i32 0, i32 20
  store %struct.pn533_phy_ops* %34, %struct.pn533_phy_ops** %36, align 8
  %37 = load %struct.device*, %struct.device** %16, align 8
  %38 = load %struct.pn533*, %struct.pn533** %18, align 8
  %39 = getelementptr inbounds %struct.pn533, %struct.pn533* %38, i32 0, i32 19
  store %struct.device* %37, %struct.device** %39, align 8
  %40 = load %struct.pn533_frame_ops*, %struct.pn533_frame_ops** %15, align 8
  %41 = icmp ne %struct.pn533_frame_ops* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %30
  %43 = load %struct.pn533_frame_ops*, %struct.pn533_frame_ops** %15, align 8
  %44 = load %struct.pn533*, %struct.pn533** %18, align 8
  %45 = getelementptr inbounds %struct.pn533, %struct.pn533* %44, i32 0, i32 3
  store %struct.pn533_frame_ops* %43, %struct.pn533_frame_ops** %45, align 8
  br label %49

46:                                               ; preds = %30
  %47 = load %struct.pn533*, %struct.pn533** %18, align 8
  %48 = getelementptr inbounds %struct.pn533, %struct.pn533* %47, i32 0, i32 3
  store %struct.pn533_frame_ops* @pn533_std_frame_ops, %struct.pn533_frame_ops** %48, align 8
  br label %49

49:                                               ; preds = %46, %42
  %50 = load i32, i32* %12, align 4
  %51 = load %struct.pn533*, %struct.pn533** %18, align 8
  %52 = getelementptr inbounds %struct.pn533, %struct.pn533* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.pn533*, %struct.pn533** %18, align 8
  %55 = getelementptr inbounds %struct.pn533, %struct.pn533* %54, i32 0, i32 18
  store i32 %53, i32* %55, align 8
  %56 = load %struct.pn533*, %struct.pn533** %18, align 8
  %57 = getelementptr inbounds %struct.pn533, %struct.pn533* %56, i32 0, i32 17
  %58 = call i32 @mutex_init(i32* %57)
  %59 = load %struct.pn533*, %struct.pn533** %18, align 8
  %60 = getelementptr inbounds %struct.pn533, %struct.pn533* %59, i32 0, i32 16
  %61 = load i32, i32* @pn533_wq_cmd, align 4
  %62 = call i32 @INIT_WORK(i32* %60, i32 %61)
  %63 = load %struct.pn533*, %struct.pn533** %18, align 8
  %64 = getelementptr inbounds %struct.pn533, %struct.pn533* %63, i32 0, i32 15
  %65 = load i32, i32* @pn533_wq_cmd_complete, align 4
  %66 = call i32 @INIT_WORK(i32* %64, i32 %65)
  %67 = load %struct.pn533*, %struct.pn533** %18, align 8
  %68 = getelementptr inbounds %struct.pn533, %struct.pn533* %67, i32 0, i32 14
  %69 = load i32, i32* @pn533_wq_mi_recv, align 4
  %70 = call i32 @INIT_WORK(i32* %68, i32 %69)
  %71 = load %struct.pn533*, %struct.pn533** %18, align 8
  %72 = getelementptr inbounds %struct.pn533, %struct.pn533* %71, i32 0, i32 13
  %73 = load i32, i32* @pn533_wq_mi_send, align 4
  %74 = call i32 @INIT_WORK(i32* %72, i32 %73)
  %75 = load %struct.pn533*, %struct.pn533** %18, align 8
  %76 = getelementptr inbounds %struct.pn533, %struct.pn533* %75, i32 0, i32 12
  %77 = load i32, i32* @pn533_wq_tg_get_data, align 4
  %78 = call i32 @INIT_WORK(i32* %76, i32 %77)
  %79 = load %struct.pn533*, %struct.pn533** %18, align 8
  %80 = getelementptr inbounds %struct.pn533, %struct.pn533* %79, i32 0, i32 11
  %81 = load i32, i32* @pn533_wq_tm_mi_recv, align 4
  %82 = call i32 @INIT_WORK(i32* %80, i32 %81)
  %83 = load %struct.pn533*, %struct.pn533** %18, align 8
  %84 = getelementptr inbounds %struct.pn533, %struct.pn533* %83, i32 0, i32 10
  %85 = load i32, i32* @pn533_wq_tm_mi_send, align 4
  %86 = call i32 @INIT_WORK(i32* %84, i32 %85)
  %87 = load %struct.pn533*, %struct.pn533** %18, align 8
  %88 = getelementptr inbounds %struct.pn533, %struct.pn533* %87, i32 0, i32 9
  %89 = load i32, i32* @pn533_wq_poll, align 4
  %90 = call i32 @INIT_DELAYED_WORK(i32* %88, i32 %89)
  %91 = load %struct.pn533*, %struct.pn533** %18, align 8
  %92 = getelementptr inbounds %struct.pn533, %struct.pn533* %91, i32 0, i32 8
  %93 = load i32, i32* @pn533_wq_rf, align 4
  %94 = call i32 @INIT_WORK(i32* %92, i32 %93)
  %95 = call i32* @alloc_ordered_workqueue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 0)
  %96 = load %struct.pn533*, %struct.pn533** %18, align 8
  %97 = getelementptr inbounds %struct.pn533, %struct.pn533* %96, i32 0, i32 1
  store i32* %95, i32** %97, align 8
  %98 = load %struct.pn533*, %struct.pn533** %18, align 8
  %99 = getelementptr inbounds %struct.pn533, %struct.pn533* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = icmp eq i32* %100, null
  br i1 %101, label %102, label %103

102:                                              ; preds = %49
  br label %170

103:                                              ; preds = %49
  %104 = load %struct.pn533*, %struct.pn533** %18, align 8
  %105 = getelementptr inbounds %struct.pn533, %struct.pn533* %104, i32 0, i32 7
  %106 = load i32, i32* @pn533_listen_mode_timer, align 4
  %107 = call i32 @timer_setup(i32* %105, i32 %106, i32 0)
  %108 = load %struct.pn533*, %struct.pn533** %18, align 8
  %109 = getelementptr inbounds %struct.pn533, %struct.pn533* %108, i32 0, i32 6
  %110 = call i32 @skb_queue_head_init(i32* %109)
  %111 = load %struct.pn533*, %struct.pn533** %18, align 8
  %112 = getelementptr inbounds %struct.pn533, %struct.pn533* %111, i32 0, i32 5
  %113 = call i32 @skb_queue_head_init(i32* %112)
  %114 = load %struct.pn533*, %struct.pn533** %18, align 8
  %115 = getelementptr inbounds %struct.pn533, %struct.pn533* %114, i32 0, i32 4
  %116 = call i32 @INIT_LIST_HEAD(i32* %115)
  %117 = load i32, i32* %11, align 4
  %118 = load %struct.pn533*, %struct.pn533** %18, align 8
  %119 = getelementptr inbounds %struct.pn533, %struct.pn533* %118, i32 0, i32 3
  %120 = load %struct.pn533_frame_ops*, %struct.pn533_frame_ops** %119, align 8
  %121 = getelementptr inbounds %struct.pn533_frame_ops, %struct.pn533_frame_ops* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @PN533_CMD_DATAEXCH_HEAD_LEN, align 8
  %124 = add nsw i64 %122, %123
  %125 = load %struct.pn533*, %struct.pn533** %18, align 8
  %126 = getelementptr inbounds %struct.pn533, %struct.pn533* %125, i32 0, i32 3
  %127 = load %struct.pn533_frame_ops*, %struct.pn533_frame_ops** %126, align 8
  %128 = getelementptr inbounds %struct.pn533_frame_ops, %struct.pn533_frame_ops* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @nfc_allocate_device(i32* @pn533_nfc_ops, i32 %117, i64 %124, i32 %129)
  %131 = load %struct.pn533*, %struct.pn533** %18, align 8
  %132 = getelementptr inbounds %struct.pn533, %struct.pn533* %131, i32 0, i32 2
  store i32 %130, i32* %132, align 8
  %133 = load %struct.pn533*, %struct.pn533** %18, align 8
  %134 = getelementptr inbounds %struct.pn533, %struct.pn533* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %140, label %137

137:                                              ; preds = %103
  %138 = load i32, i32* @ENOMEM, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %19, align 4
  br label %165

140:                                              ; preds = %103
  %141 = load %struct.pn533*, %struct.pn533** %18, align 8
  %142 = getelementptr inbounds %struct.pn533, %struct.pn533* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.device*, %struct.device** %17, align 8
  %145 = call i32 @nfc_set_parent_dev(i32 %143, %struct.device* %144)
  %146 = load %struct.pn533*, %struct.pn533** %18, align 8
  %147 = getelementptr inbounds %struct.pn533, %struct.pn533* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.pn533*, %struct.pn533** %18, align 8
  %150 = call i32 @nfc_set_drvdata(i32 %148, %struct.pn533* %149)
  %151 = load %struct.pn533*, %struct.pn533** %18, align 8
  %152 = getelementptr inbounds %struct.pn533, %struct.pn533* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @nfc_register_device(i32 %153)
  store i32 %154, i32* %19, align 4
  %155 = load i32, i32* %19, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %140
  br label %160

158:                                              ; preds = %140
  %159 = load %struct.pn533*, %struct.pn533** %18, align 8
  store %struct.pn533* %159, %struct.pn533** %9, align 8
  br label %175

160:                                              ; preds = %157
  %161 = load %struct.pn533*, %struct.pn533** %18, align 8
  %162 = getelementptr inbounds %struct.pn533, %struct.pn533* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @nfc_free_device(i32 %163)
  br label %165

165:                                              ; preds = %160, %137
  %166 = load %struct.pn533*, %struct.pn533** %18, align 8
  %167 = getelementptr inbounds %struct.pn533, %struct.pn533* %166, i32 0, i32 1
  %168 = load i32*, i32** %167, align 8
  %169 = call i32 @destroy_workqueue(i32* %168)
  br label %170

170:                                              ; preds = %165, %102
  %171 = load %struct.pn533*, %struct.pn533** %18, align 8
  %172 = call i32 @kfree(%struct.pn533* %171)
  %173 = load i32, i32* %19, align 4
  %174 = call %struct.pn533* @ERR_PTR(i32 %173)
  store %struct.pn533* %174, %struct.pn533** %9, align 8
  br label %175

175:                                              ; preds = %170, %158, %26
  %176 = load %struct.pn533*, %struct.pn533** %9, align 8
  ret %struct.pn533* %176
}

declare dso_local %struct.pn533* @kzalloc(i32, i32) #1

declare dso_local %struct.pn533* @ERR_PTR(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32* @alloc_ordered_workqueue(i8*, i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @nfc_allocate_device(i32*, i32, i64, i32) #1

declare dso_local i32 @nfc_set_parent_dev(i32, %struct.device*) #1

declare dso_local i32 @nfc_set_drvdata(i32, %struct.pn533*) #1

declare dso_local i32 @nfc_register_device(i32) #1

declare dso_local i32 @nfc_free_device(i32) #1

declare dso_local i32 @destroy_workqueue(i32*) #1

declare dso_local i32 @kfree(%struct.pn533*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
