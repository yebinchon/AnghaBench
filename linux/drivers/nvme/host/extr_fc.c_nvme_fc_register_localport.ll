; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fc.c_nvme_fc_register_localport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fc.c_nvme_fc_register_localport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_fc_port_info = type { i32, i32, i32, i32 }
%struct.nvme_fc_port_template = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.device = type { i32 }
%struct.nvme_fc_local_port = type { i32, i32, i32, i32, i32, i32, %struct.nvme_fc_lport* }
%struct.nvme_fc_lport = type { %struct.nvme_fc_local_port, i32, i32, %struct.device*, %struct.nvme_fc_port_template*, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nvme_fc_local_port_cnt = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@FC_OBJSTATE_ONLINE = common dso_local global i32 0, align 4
@nvme_fc_lock = common dso_local global i32 0, align 4
@nvme_fc_lport_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvme_fc_register_localport(%struct.nvme_fc_port_info* %0, %struct.nvme_fc_port_template* %1, %struct.device* %2, %struct.nvme_fc_local_port** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvme_fc_port_info*, align 8
  %7 = alloca %struct.nvme_fc_port_template*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.nvme_fc_local_port**, align 8
  %10 = alloca %struct.nvme_fc_lport*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nvme_fc_port_info* %0, %struct.nvme_fc_port_info** %6, align 8
  store %struct.nvme_fc_port_template* %1, %struct.nvme_fc_port_template** %7, align 8
  store %struct.device* %2, %struct.device** %8, align 8
  store %struct.nvme_fc_local_port** %3, %struct.nvme_fc_local_port*** %9, align 8
  %14 = load %struct.nvme_fc_port_template*, %struct.nvme_fc_port_template** %7, align 8
  %15 = getelementptr inbounds %struct.nvme_fc_port_template, %struct.nvme_fc_port_template* %14, i32 0, i32 10
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %63

18:                                               ; preds = %4
  %19 = load %struct.nvme_fc_port_template*, %struct.nvme_fc_port_template** %7, align 8
  %20 = getelementptr inbounds %struct.nvme_fc_port_template, %struct.nvme_fc_port_template* %19, i32 0, i32 9
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %63

23:                                               ; preds = %18
  %24 = load %struct.nvme_fc_port_template*, %struct.nvme_fc_port_template** %7, align 8
  %25 = getelementptr inbounds %struct.nvme_fc_port_template, %struct.nvme_fc_port_template* %24, i32 0, i32 8
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %63

28:                                               ; preds = %23
  %29 = load %struct.nvme_fc_port_template*, %struct.nvme_fc_port_template** %7, align 8
  %30 = getelementptr inbounds %struct.nvme_fc_port_template, %struct.nvme_fc_port_template* %29, i32 0, i32 7
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %63

33:                                               ; preds = %28
  %34 = load %struct.nvme_fc_port_template*, %struct.nvme_fc_port_template** %7, align 8
  %35 = getelementptr inbounds %struct.nvme_fc_port_template, %struct.nvme_fc_port_template* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %63

38:                                               ; preds = %33
  %39 = load %struct.nvme_fc_port_template*, %struct.nvme_fc_port_template** %7, align 8
  %40 = getelementptr inbounds %struct.nvme_fc_port_template, %struct.nvme_fc_port_template* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %63

43:                                               ; preds = %38
  %44 = load %struct.nvme_fc_port_template*, %struct.nvme_fc_port_template** %7, align 8
  %45 = getelementptr inbounds %struct.nvme_fc_port_template, %struct.nvme_fc_port_template* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %63

48:                                               ; preds = %43
  %49 = load %struct.nvme_fc_port_template*, %struct.nvme_fc_port_template** %7, align 8
  %50 = getelementptr inbounds %struct.nvme_fc_port_template, %struct.nvme_fc_port_template* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %48
  %54 = load %struct.nvme_fc_port_template*, %struct.nvme_fc_port_template** %7, align 8
  %55 = getelementptr inbounds %struct.nvme_fc_port_template, %struct.nvme_fc_port_template* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load %struct.nvme_fc_port_template*, %struct.nvme_fc_port_template** %7, align 8
  %60 = getelementptr inbounds %struct.nvme_fc_port_template, %struct.nvme_fc_port_template* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %58, %53, %48, %43, %38, %33, %28, %23, %18, %4
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %12, align 4
  br label %199

66:                                               ; preds = %58
  %67 = load %struct.nvme_fc_port_info*, %struct.nvme_fc_port_info** %6, align 8
  %68 = load %struct.nvme_fc_port_template*, %struct.nvme_fc_port_template** %7, align 8
  %69 = load %struct.device*, %struct.device** %8, align 8
  %70 = call %struct.nvme_fc_lport* @nvme_fc_attach_to_unreg_lport(%struct.nvme_fc_port_info* %67, %struct.nvme_fc_port_template* %68, %struct.device* %69)
  store %struct.nvme_fc_lport* %70, %struct.nvme_fc_lport** %10, align 8
  %71 = load %struct.nvme_fc_lport*, %struct.nvme_fc_lport** %10, align 8
  %72 = call i64 @IS_ERR(%struct.nvme_fc_lport* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %66
  %75 = load %struct.nvme_fc_lport*, %struct.nvme_fc_lport** %10, align 8
  %76 = call i32 @PTR_ERR(%struct.nvme_fc_lport* %75)
  store i32 %76, i32* %12, align 4
  br label %199

77:                                               ; preds = %66
  %78 = load %struct.nvme_fc_lport*, %struct.nvme_fc_lport** %10, align 8
  %79 = icmp ne %struct.nvme_fc_lport* %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load %struct.nvme_fc_lport*, %struct.nvme_fc_lport** %10, align 8
  %82 = getelementptr inbounds %struct.nvme_fc_lport, %struct.nvme_fc_lport* %81, i32 0, i32 0
  %83 = load %struct.nvme_fc_local_port**, %struct.nvme_fc_local_port*** %9, align 8
  store %struct.nvme_fc_local_port* %82, %struct.nvme_fc_local_port** %83, align 8
  store i32 0, i32* %5, align 4
  br label %202

84:                                               ; preds = %77
  br label %85

85:                                               ; preds = %84
  %86 = load %struct.nvme_fc_port_template*, %struct.nvme_fc_port_template** %7, align 8
  %87 = getelementptr inbounds %struct.nvme_fc_port_template, %struct.nvme_fc_port_template* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = add i64 72, %88
  %90 = load i32, i32* @GFP_KERNEL, align 4
  %91 = call %struct.nvme_fc_lport* @kmalloc(i64 %89, i32 %90)
  store %struct.nvme_fc_lport* %91, %struct.nvme_fc_lport** %10, align 8
  %92 = load %struct.nvme_fc_lport*, %struct.nvme_fc_lport** %10, align 8
  %93 = icmp ne %struct.nvme_fc_lport* %92, null
  br i1 %93, label %97, label %94

94:                                               ; preds = %85
  %95 = load i32, i32* @ENOMEM, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %12, align 4
  br label %199

97:                                               ; preds = %85
  %98 = load i32, i32* @GFP_KERNEL, align 4
  %99 = call i32 @ida_simple_get(i32* @nvme_fc_local_port_cnt, i32 0, i32 0, i32 %98)
  store i32 %99, i32* %13, align 4
  %100 = load i32, i32* %13, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = load i32, i32* @ENOSPC, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %12, align 4
  br label %196

105:                                              ; preds = %97
  %106 = load %struct.device*, %struct.device** %8, align 8
  %107 = call i32 @get_device(%struct.device* %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %115, label %109

109:                                              ; preds = %105
  %110 = load %struct.device*, %struct.device** %8, align 8
  %111 = icmp ne %struct.device* %110, null
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load i32, i32* @ENODEV, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %12, align 4
  br label %193

115:                                              ; preds = %109, %105
  %116 = load %struct.nvme_fc_lport*, %struct.nvme_fc_lport** %10, align 8
  %117 = getelementptr inbounds %struct.nvme_fc_lport, %struct.nvme_fc_lport* %116, i32 0, i32 1
  %118 = call i32 @INIT_LIST_HEAD(i32* %117)
  %119 = load %struct.nvme_fc_lport*, %struct.nvme_fc_lport** %10, align 8
  %120 = getelementptr inbounds %struct.nvme_fc_lport, %struct.nvme_fc_lport* %119, i32 0, i32 7
  %121 = call i32 @INIT_LIST_HEAD(i32* %120)
  %122 = load %struct.nvme_fc_lport*, %struct.nvme_fc_lport** %10, align 8
  %123 = getelementptr inbounds %struct.nvme_fc_lport, %struct.nvme_fc_lport* %122, i32 0, i32 6
  %124 = call i32 @kref_init(i32* %123)
  %125 = load %struct.nvme_fc_lport*, %struct.nvme_fc_lport** %10, align 8
  %126 = getelementptr inbounds %struct.nvme_fc_lport, %struct.nvme_fc_lport* %125, i32 0, i32 5
  %127 = call i32 @atomic_set(i32* %126, i32 0)
  %128 = load %struct.nvme_fc_port_template*, %struct.nvme_fc_port_template** %7, align 8
  %129 = load %struct.nvme_fc_lport*, %struct.nvme_fc_lport** %10, align 8
  %130 = getelementptr inbounds %struct.nvme_fc_lport, %struct.nvme_fc_lport* %129, i32 0, i32 4
  store %struct.nvme_fc_port_template* %128, %struct.nvme_fc_port_template** %130, align 8
  %131 = load %struct.device*, %struct.device** %8, align 8
  %132 = load %struct.nvme_fc_lport*, %struct.nvme_fc_lport** %10, align 8
  %133 = getelementptr inbounds %struct.nvme_fc_lport, %struct.nvme_fc_lport* %132, i32 0, i32 3
  store %struct.device* %131, %struct.device** %133, align 8
  %134 = load %struct.nvme_fc_lport*, %struct.nvme_fc_lport** %10, align 8
  %135 = getelementptr inbounds %struct.nvme_fc_lport, %struct.nvme_fc_lport* %134, i32 0, i32 2
  %136 = call i32 @ida_init(i32* %135)
  %137 = load %struct.nvme_fc_lport*, %struct.nvme_fc_lport** %10, align 8
  %138 = getelementptr inbounds %struct.nvme_fc_lport, %struct.nvme_fc_lport* %137, i64 1
  %139 = load %struct.nvme_fc_lport*, %struct.nvme_fc_lport** %10, align 8
  %140 = getelementptr inbounds %struct.nvme_fc_lport, %struct.nvme_fc_lport* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.nvme_fc_local_port, %struct.nvme_fc_local_port* %140, i32 0, i32 6
  store %struct.nvme_fc_lport* %138, %struct.nvme_fc_lport** %141, align 8
  %142 = load %struct.nvme_fc_port_info*, %struct.nvme_fc_port_info** %6, align 8
  %143 = getelementptr inbounds %struct.nvme_fc_port_info, %struct.nvme_fc_port_info* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.nvme_fc_lport*, %struct.nvme_fc_lport** %10, align 8
  %146 = getelementptr inbounds %struct.nvme_fc_lport, %struct.nvme_fc_lport* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.nvme_fc_local_port, %struct.nvme_fc_local_port* %146, i32 0, i32 5
  store i32 %144, i32* %147, align 4
  %148 = load %struct.nvme_fc_port_info*, %struct.nvme_fc_port_info** %6, align 8
  %149 = getelementptr inbounds %struct.nvme_fc_port_info, %struct.nvme_fc_port_info* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.nvme_fc_lport*, %struct.nvme_fc_lport** %10, align 8
  %152 = getelementptr inbounds %struct.nvme_fc_lport, %struct.nvme_fc_lport* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.nvme_fc_local_port, %struct.nvme_fc_local_port* %152, i32 0, i32 4
  store i32 %150, i32* %153, align 8
  %154 = load %struct.nvme_fc_port_info*, %struct.nvme_fc_port_info** %6, align 8
  %155 = getelementptr inbounds %struct.nvme_fc_port_info, %struct.nvme_fc_port_info* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.nvme_fc_lport*, %struct.nvme_fc_lport** %10, align 8
  %158 = getelementptr inbounds %struct.nvme_fc_lport, %struct.nvme_fc_lport* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.nvme_fc_local_port, %struct.nvme_fc_local_port* %158, i32 0, i32 3
  store i32 %156, i32* %159, align 4
  %160 = load %struct.nvme_fc_port_info*, %struct.nvme_fc_port_info** %6, align 8
  %161 = getelementptr inbounds %struct.nvme_fc_port_info, %struct.nvme_fc_port_info* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.nvme_fc_lport*, %struct.nvme_fc_lport** %10, align 8
  %164 = getelementptr inbounds %struct.nvme_fc_lport, %struct.nvme_fc_lport* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.nvme_fc_local_port, %struct.nvme_fc_local_port* %164, i32 0, i32 2
  store i32 %162, i32* %165, align 8
  %166 = load i32, i32* @FC_OBJSTATE_ONLINE, align 4
  %167 = load %struct.nvme_fc_lport*, %struct.nvme_fc_lport** %10, align 8
  %168 = getelementptr inbounds %struct.nvme_fc_lport, %struct.nvme_fc_lport* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.nvme_fc_local_port, %struct.nvme_fc_local_port* %168, i32 0, i32 1
  store i32 %166, i32* %169, align 4
  %170 = load i32, i32* %13, align 4
  %171 = load %struct.nvme_fc_lport*, %struct.nvme_fc_lport** %10, align 8
  %172 = getelementptr inbounds %struct.nvme_fc_lport, %struct.nvme_fc_lport* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.nvme_fc_local_port, %struct.nvme_fc_local_port* %172, i32 0, i32 0
  store i32 %170, i32* %173, align 8
  %174 = load i64, i64* %11, align 8
  %175 = call i32 @spin_lock_irqsave(i32* @nvme_fc_lock, i64 %174)
  %176 = load %struct.nvme_fc_lport*, %struct.nvme_fc_lport** %10, align 8
  %177 = getelementptr inbounds %struct.nvme_fc_lport, %struct.nvme_fc_lport* %176, i32 0, i32 1
  %178 = call i32 @list_add_tail(i32* %177, i32* @nvme_fc_lport_list)
  %179 = load i64, i64* %11, align 8
  %180 = call i32 @spin_unlock_irqrestore(i32* @nvme_fc_lock, i64 %179)
  %181 = load %struct.device*, %struct.device** %8, align 8
  %182 = icmp ne %struct.device* %181, null
  br i1 %182, label %183, label %189

183:                                              ; preds = %115
  %184 = load %struct.device*, %struct.device** %8, align 8
  %185 = load %struct.nvme_fc_port_template*, %struct.nvme_fc_port_template** %7, align 8
  %186 = getelementptr inbounds %struct.nvme_fc_port_template, %struct.nvme_fc_port_template* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @dma_set_seg_boundary(%struct.device* %184, i32 %187)
  br label %189

189:                                              ; preds = %183, %115
  %190 = load %struct.nvme_fc_lport*, %struct.nvme_fc_lport** %10, align 8
  %191 = getelementptr inbounds %struct.nvme_fc_lport, %struct.nvme_fc_lport* %190, i32 0, i32 0
  %192 = load %struct.nvme_fc_local_port**, %struct.nvme_fc_local_port*** %9, align 8
  store %struct.nvme_fc_local_port* %191, %struct.nvme_fc_local_port** %192, align 8
  store i32 0, i32* %5, align 4
  br label %202

193:                                              ; preds = %112
  %194 = load i32, i32* %13, align 4
  %195 = call i32 @ida_simple_remove(i32* @nvme_fc_local_port_cnt, i32 %194)
  br label %196

196:                                              ; preds = %193, %102
  %197 = load %struct.nvme_fc_lport*, %struct.nvme_fc_lport** %10, align 8
  %198 = call i32 @kfree(%struct.nvme_fc_lport* %197)
  br label %199

199:                                              ; preds = %196, %94, %74, %63
  %200 = load %struct.nvme_fc_local_port**, %struct.nvme_fc_local_port*** %9, align 8
  store %struct.nvme_fc_local_port* null, %struct.nvme_fc_local_port** %200, align 8
  %201 = load i32, i32* %12, align 4
  store i32 %201, i32* %5, align 4
  br label %202

202:                                              ; preds = %199, %189, %80
  %203 = load i32, i32* %5, align 4
  ret i32 %203
}

declare dso_local %struct.nvme_fc_lport* @nvme_fc_attach_to_unreg_lport(%struct.nvme_fc_port_info*, %struct.nvme_fc_port_template*, %struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.nvme_fc_lport*) #1

declare dso_local i32 @PTR_ERR(%struct.nvme_fc_lport*) #1

declare dso_local %struct.nvme_fc_lport* @kmalloc(i64, i32) #1

declare dso_local i32 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @get_device(%struct.device*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @ida_init(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dma_set_seg_boundary(%struct.device*, i32) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

declare dso_local i32 @kfree(%struct.nvme_fc_lport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
