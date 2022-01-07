; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_fc.c_nvmet_fc_register_targetport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_fc.c_nvmet_fc_register_targetport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_fc_port_info = type { i32, i32, i32 }
%struct.nvmet_fc_target_template = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.device = type { i32 }
%struct.nvmet_fc_target_port = type { i32, i32, %struct.nvmet_fc_tgtport*, i32, i32 }
%struct.nvmet_fc_tgtport = type { %struct.nvmet_fc_target_port, i32, i64, i32, i32, i32, i32, i32, i32, %struct.nvmet_fc_target_template*, %struct.device* }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nvmet_fc_tgtport_cnt = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@nvmet_fc_tgtlock = common dso_local global i32 0, align 4
@nvmet_fc_target_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvmet_fc_register_targetport(%struct.nvmet_fc_port_info* %0, %struct.nvmet_fc_target_template* %1, %struct.device* %2, %struct.nvmet_fc_target_port** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvmet_fc_port_info*, align 8
  %7 = alloca %struct.nvmet_fc_target_template*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.nvmet_fc_target_port**, align 8
  %10 = alloca %struct.nvmet_fc_tgtport*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nvmet_fc_port_info* %0, %struct.nvmet_fc_port_info** %6, align 8
  store %struct.nvmet_fc_target_template* %1, %struct.nvmet_fc_target_template** %7, align 8
  store %struct.device* %2, %struct.device** %8, align 8
  store %struct.nvmet_fc_target_port** %3, %struct.nvmet_fc_target_port*** %9, align 8
  %14 = load %struct.nvmet_fc_target_template*, %struct.nvmet_fc_target_template** %7, align 8
  %15 = getelementptr inbounds %struct.nvmet_fc_target_template, %struct.nvmet_fc_target_template* %14, i32 0, i32 9
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %58

18:                                               ; preds = %4
  %19 = load %struct.nvmet_fc_target_template*, %struct.nvmet_fc_target_template** %7, align 8
  %20 = getelementptr inbounds %struct.nvmet_fc_target_template, %struct.nvmet_fc_target_template* %19, i32 0, i32 8
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %58

23:                                               ; preds = %18
  %24 = load %struct.nvmet_fc_target_template*, %struct.nvmet_fc_target_template** %7, align 8
  %25 = getelementptr inbounds %struct.nvmet_fc_target_template, %struct.nvmet_fc_target_template* %24, i32 0, i32 7
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %58

28:                                               ; preds = %23
  %29 = load %struct.nvmet_fc_target_template*, %struct.nvmet_fc_target_template** %7, align 8
  %30 = getelementptr inbounds %struct.nvmet_fc_target_template, %struct.nvmet_fc_target_template* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %58

33:                                               ; preds = %28
  %34 = load %struct.nvmet_fc_target_template*, %struct.nvmet_fc_target_template** %7, align 8
  %35 = getelementptr inbounds %struct.nvmet_fc_target_template, %struct.nvmet_fc_target_template* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %58

38:                                               ; preds = %33
  %39 = load %struct.nvmet_fc_target_template*, %struct.nvmet_fc_target_template** %7, align 8
  %40 = getelementptr inbounds %struct.nvmet_fc_target_template, %struct.nvmet_fc_target_template* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %38
  %44 = load %struct.nvmet_fc_target_template*, %struct.nvmet_fc_target_template** %7, align 8
  %45 = getelementptr inbounds %struct.nvmet_fc_target_template, %struct.nvmet_fc_target_template* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %43
  %49 = load %struct.nvmet_fc_target_template*, %struct.nvmet_fc_target_template** %7, align 8
  %50 = getelementptr inbounds %struct.nvmet_fc_target_template, %struct.nvmet_fc_target_template* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load %struct.nvmet_fc_target_template*, %struct.nvmet_fc_target_template** %7, align 8
  %55 = getelementptr inbounds %struct.nvmet_fc_target_template, %struct.nvmet_fc_target_template* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %53, %48, %43, %38, %33, %28, %23, %18, %4
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %12, align 4
  br label %180

61:                                               ; preds = %53
  %62 = load %struct.nvmet_fc_target_template*, %struct.nvmet_fc_target_template** %7, align 8
  %63 = getelementptr inbounds %struct.nvmet_fc_target_template, %struct.nvmet_fc_target_template* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = add i64 80, %64
  %66 = load i32, i32* @GFP_KERNEL, align 4
  %67 = call %struct.nvmet_fc_tgtport* @kzalloc(i64 %65, i32 %66)
  store %struct.nvmet_fc_tgtport* %67, %struct.nvmet_fc_tgtport** %10, align 8
  %68 = load %struct.nvmet_fc_tgtport*, %struct.nvmet_fc_tgtport** %10, align 8
  %69 = icmp ne %struct.nvmet_fc_tgtport* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %61
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %12, align 4
  br label %180

73:                                               ; preds = %61
  %74 = load i32, i32* @GFP_KERNEL, align 4
  %75 = call i32 @ida_simple_get(i32* @nvmet_fc_tgtport_cnt, i32 0, i32 0, i32 %74)
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* %13, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load i32, i32* @ENOSPC, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %12, align 4
  br label %177

81:                                               ; preds = %73
  %82 = load %struct.device*, %struct.device** %8, align 8
  %83 = call i32 @get_device(%struct.device* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %91, label %85

85:                                               ; preds = %81
  %86 = load %struct.device*, %struct.device** %8, align 8
  %87 = icmp ne %struct.device* %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load i32, i32* @ENODEV, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %12, align 4
  br label %174

91:                                               ; preds = %85, %81
  %92 = load %struct.nvmet_fc_port_info*, %struct.nvmet_fc_port_info** %6, align 8
  %93 = getelementptr inbounds %struct.nvmet_fc_port_info, %struct.nvmet_fc_port_info* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.nvmet_fc_tgtport*, %struct.nvmet_fc_tgtport** %10, align 8
  %96 = getelementptr inbounds %struct.nvmet_fc_tgtport, %struct.nvmet_fc_tgtport* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.nvmet_fc_target_port, %struct.nvmet_fc_target_port* %96, i32 0, i32 4
  store i32 %94, i32* %97, align 4
  %98 = load %struct.nvmet_fc_port_info*, %struct.nvmet_fc_port_info** %6, align 8
  %99 = getelementptr inbounds %struct.nvmet_fc_port_info, %struct.nvmet_fc_port_info* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.nvmet_fc_tgtport*, %struct.nvmet_fc_tgtport** %10, align 8
  %102 = getelementptr inbounds %struct.nvmet_fc_tgtport, %struct.nvmet_fc_tgtport* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.nvmet_fc_target_port, %struct.nvmet_fc_target_port* %102, i32 0, i32 3
  store i32 %100, i32* %103, align 8
  %104 = load %struct.nvmet_fc_tgtport*, %struct.nvmet_fc_tgtport** %10, align 8
  %105 = getelementptr inbounds %struct.nvmet_fc_tgtport, %struct.nvmet_fc_tgtport* %104, i64 1
  %106 = load %struct.nvmet_fc_tgtport*, %struct.nvmet_fc_tgtport** %10, align 8
  %107 = getelementptr inbounds %struct.nvmet_fc_tgtport, %struct.nvmet_fc_tgtport* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.nvmet_fc_target_port, %struct.nvmet_fc_target_port* %107, i32 0, i32 2
  store %struct.nvmet_fc_tgtport* %105, %struct.nvmet_fc_tgtport** %108, align 8
  %109 = load %struct.nvmet_fc_port_info*, %struct.nvmet_fc_port_info** %6, align 8
  %110 = getelementptr inbounds %struct.nvmet_fc_port_info, %struct.nvmet_fc_port_info* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.nvmet_fc_tgtport*, %struct.nvmet_fc_tgtport** %10, align 8
  %113 = getelementptr inbounds %struct.nvmet_fc_tgtport, %struct.nvmet_fc_tgtport* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.nvmet_fc_target_port, %struct.nvmet_fc_target_port* %113, i32 0, i32 1
  store i32 %111, i32* %114, align 4
  %115 = load i32, i32* %13, align 4
  %116 = load %struct.nvmet_fc_tgtport*, %struct.nvmet_fc_tgtport** %10, align 8
  %117 = getelementptr inbounds %struct.nvmet_fc_tgtport, %struct.nvmet_fc_tgtport* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.nvmet_fc_target_port, %struct.nvmet_fc_target_port* %117, i32 0, i32 0
  store i32 %115, i32* %118, align 8
  %119 = load %struct.nvmet_fc_tgtport*, %struct.nvmet_fc_tgtport** %10, align 8
  %120 = getelementptr inbounds %struct.nvmet_fc_tgtport, %struct.nvmet_fc_tgtport* %119, i32 0, i32 1
  %121 = call i32 @INIT_LIST_HEAD(i32* %120)
  %122 = load %struct.device*, %struct.device** %8, align 8
  %123 = load %struct.nvmet_fc_tgtport*, %struct.nvmet_fc_tgtport** %10, align 8
  %124 = getelementptr inbounds %struct.nvmet_fc_tgtport, %struct.nvmet_fc_tgtport* %123, i32 0, i32 10
  store %struct.device* %122, %struct.device** %124, align 8
  %125 = load %struct.nvmet_fc_target_template*, %struct.nvmet_fc_target_template** %7, align 8
  %126 = load %struct.nvmet_fc_tgtport*, %struct.nvmet_fc_tgtport** %10, align 8
  %127 = getelementptr inbounds %struct.nvmet_fc_tgtport, %struct.nvmet_fc_tgtport* %126, i32 0, i32 9
  store %struct.nvmet_fc_target_template* %125, %struct.nvmet_fc_target_template** %127, align 8
  %128 = load %struct.nvmet_fc_tgtport*, %struct.nvmet_fc_tgtport** %10, align 8
  %129 = getelementptr inbounds %struct.nvmet_fc_tgtport, %struct.nvmet_fc_tgtport* %128, i32 0, i32 8
  %130 = call i32 @spin_lock_init(i32* %129)
  %131 = load %struct.nvmet_fc_tgtport*, %struct.nvmet_fc_tgtport** %10, align 8
  %132 = getelementptr inbounds %struct.nvmet_fc_tgtport, %struct.nvmet_fc_tgtport* %131, i32 0, i32 7
  %133 = call i32 @INIT_LIST_HEAD(i32* %132)
  %134 = load %struct.nvmet_fc_tgtport*, %struct.nvmet_fc_tgtport** %10, align 8
  %135 = getelementptr inbounds %struct.nvmet_fc_tgtport, %struct.nvmet_fc_tgtport* %134, i32 0, i32 6
  %136 = call i32 @INIT_LIST_HEAD(i32* %135)
  %137 = load %struct.nvmet_fc_tgtport*, %struct.nvmet_fc_tgtport** %10, align 8
  %138 = getelementptr inbounds %struct.nvmet_fc_tgtport, %struct.nvmet_fc_tgtport* %137, i32 0, i32 5
  %139 = call i32 @INIT_LIST_HEAD(i32* %138)
  %140 = load %struct.nvmet_fc_tgtport*, %struct.nvmet_fc_tgtport** %10, align 8
  %141 = getelementptr inbounds %struct.nvmet_fc_tgtport, %struct.nvmet_fc_tgtport* %140, i32 0, i32 4
  %142 = call i32 @kref_init(i32* %141)
  %143 = load %struct.nvmet_fc_tgtport*, %struct.nvmet_fc_tgtport** %10, align 8
  %144 = getelementptr inbounds %struct.nvmet_fc_tgtport, %struct.nvmet_fc_tgtport* %143, i32 0, i32 3
  %145 = call i32 @ida_init(i32* %144)
  %146 = load %struct.nvmet_fc_target_template*, %struct.nvmet_fc_target_template** %7, align 8
  %147 = getelementptr inbounds %struct.nvmet_fc_target_template, %struct.nvmet_fc_target_template* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.nvmet_fc_tgtport*, %struct.nvmet_fc_tgtport** %10, align 8
  %150 = getelementptr inbounds %struct.nvmet_fc_tgtport, %struct.nvmet_fc_tgtport* %149, i32 0, i32 2
  store i64 %148, i64* %150, align 8
  %151 = load %struct.nvmet_fc_tgtport*, %struct.nvmet_fc_tgtport** %10, align 8
  %152 = call i32 @nvmet_fc_alloc_ls_iodlist(%struct.nvmet_fc_tgtport* %151)
  store i32 %152, i32* %12, align 4
  %153 = load i32, i32* %12, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %91
  %156 = load i32, i32* @ENOMEM, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %12, align 4
  br label %171

158:                                              ; preds = %91
  %159 = load %struct.nvmet_fc_tgtport*, %struct.nvmet_fc_tgtport** %10, align 8
  %160 = call i32 @nvmet_fc_portentry_rebind_tgt(%struct.nvmet_fc_tgtport* %159)
  %161 = load i64, i64* %11, align 8
  %162 = call i32 @spin_lock_irqsave(i32* @nvmet_fc_tgtlock, i64 %161)
  %163 = load %struct.nvmet_fc_tgtport*, %struct.nvmet_fc_tgtport** %10, align 8
  %164 = getelementptr inbounds %struct.nvmet_fc_tgtport, %struct.nvmet_fc_tgtport* %163, i32 0, i32 1
  %165 = call i32 @list_add_tail(i32* %164, i32* @nvmet_fc_target_list)
  %166 = load i64, i64* %11, align 8
  %167 = call i32 @spin_unlock_irqrestore(i32* @nvmet_fc_tgtlock, i64 %166)
  %168 = load %struct.nvmet_fc_tgtport*, %struct.nvmet_fc_tgtport** %10, align 8
  %169 = getelementptr inbounds %struct.nvmet_fc_tgtport, %struct.nvmet_fc_tgtport* %168, i32 0, i32 0
  %170 = load %struct.nvmet_fc_target_port**, %struct.nvmet_fc_target_port*** %9, align 8
  store %struct.nvmet_fc_target_port* %169, %struct.nvmet_fc_target_port** %170, align 8
  store i32 0, i32* %5, align 4
  br label %183

171:                                              ; preds = %155
  %172 = load %struct.device*, %struct.device** %8, align 8
  %173 = call i32 @put_device(%struct.device* %172)
  br label %174

174:                                              ; preds = %171, %88
  %175 = load i32, i32* %13, align 4
  %176 = call i32 @ida_simple_remove(i32* @nvmet_fc_tgtport_cnt, i32 %175)
  br label %177

177:                                              ; preds = %174, %78
  %178 = load %struct.nvmet_fc_tgtport*, %struct.nvmet_fc_tgtport** %10, align 8
  %179 = call i32 @kfree(%struct.nvmet_fc_tgtport* %178)
  br label %180

180:                                              ; preds = %177, %70, %58
  %181 = load %struct.nvmet_fc_target_port**, %struct.nvmet_fc_target_port*** %9, align 8
  store %struct.nvmet_fc_target_port* null, %struct.nvmet_fc_target_port** %181, align 8
  %182 = load i32, i32* %12, align 4
  store i32 %182, i32* %5, align 4
  br label %183

183:                                              ; preds = %180, %158
  %184 = load i32, i32* %5, align 4
  ret i32 %184
}

declare dso_local %struct.nvmet_fc_tgtport* @kzalloc(i64, i32) #1

declare dso_local i32 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @get_device(%struct.device*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @ida_init(i32*) #1

declare dso_local i32 @nvmet_fc_alloc_ls_iodlist(%struct.nvmet_fc_tgtport*) #1

declare dso_local i32 @nvmet_fc_portentry_rebind_tgt(%struct.nvmet_fc_tgtport*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @put_device(%struct.device*) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

declare dso_local i32 @kfree(%struct.nvmet_fc_tgtport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
