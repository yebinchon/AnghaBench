; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_put_ctlr_into_performant_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_put_ctlr_into_performant_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { i32, i64, i32, i32, i32*, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32, i64, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@CFGTBL_Trans_Performant = common dso_local global i64 0, align 8
@CFGTBL_Trans_use_short_tags = common dso_local global i64 0, align 8
@hpsa_simple_mode = common dso_local global i64 0, align 8
@PERFORMANT_MODE = common dso_local global i32 0, align 4
@CFGTBL_Trans_io_accel1 = common dso_local global i32 0, align 4
@CFGTBL_Trans_enable_directed_msix = common dso_local global i32 0, align 4
@CFGTBL_Trans_io_accel2 = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SG_ENTRIES_IN_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctlr_info*)* @hpsa_put_ctlr_into_performant_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpsa_put_ctlr_into_performant_mode(%struct.ctlr_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ctlr_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ctlr_info* %0, %struct.ctlr_info** %3, align 8
  %8 = load i64, i64* @CFGTBL_Trans_Performant, align 8
  %9 = load i64, i64* @CFGTBL_Trans_use_short_tags, align 8
  %10 = or i64 %8, %9
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* @hpsa_simple_mode, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %199

14:                                               ; preds = %1
  %15 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %16 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %15, i32 0, i32 7
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = call i32 @readl(i32* %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @PERFORMANT_MODE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %199

25:                                               ; preds = %14
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @CFGTBL_Trans_io_accel1, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %25
  %31 = load i32, i32* @CFGTBL_Trans_io_accel1, align 4
  %32 = load i32, i32* @CFGTBL_Trans_enable_directed_msix, align 4
  %33 = or i32 %31, %32
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* %5, align 8
  %36 = or i64 %35, %34
  store i64 %36, i64* %5, align 8
  %37 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %38 = call i32 @hpsa_alloc_ioaccel1_cmd_and_bft(%struct.ctlr_info* %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %30
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %2, align 4
  br label %199

43:                                               ; preds = %30
  br label %64

44:                                               ; preds = %25
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @CFGTBL_Trans_io_accel2, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %44
  %50 = load i32, i32* @CFGTBL_Trans_io_accel2, align 4
  %51 = load i32, i32* @CFGTBL_Trans_enable_directed_msix, align 4
  %52 = or i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = load i64, i64* %5, align 8
  %55 = or i64 %54, %53
  store i64 %55, i64* %5, align 8
  %56 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %57 = call i32 @hpsa_alloc_ioaccel2_cmd_and_bft(%struct.ctlr_info* %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %49
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %2, align 4
  br label %199

62:                                               ; preds = %49
  br label %63

63:                                               ; preds = %62, %44
  br label %64

64:                                               ; preds = %63, %43
  %65 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %66 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp sgt i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %71 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  br label %74

73:                                               ; preds = %64
  br label %74

74:                                               ; preds = %73, %69
  %75 = phi i64 [ %72, %69 ], [ 1, %73 ]
  %76 = trunc i64 %75 to i32
  %77 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %78 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %80 = call i32 @hpsa_get_max_perf_mode_cmds(%struct.ctlr_info* %79)
  %81 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %82 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = mul i64 %84, 4
  %86 = trunc i64 %85 to i32
  %87 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %88 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 8
  store i32 0, i32* %6, align 4
  br label %89

89:                                               ; preds = %156, %74
  %90 = load i32, i32* %6, align 4
  %91 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %92 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp slt i32 %90, %93
  br i1 %94, label %95, label %159

95:                                               ; preds = %89
  %96 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %97 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %96, i32 0, i32 6
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %101 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %104 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %103, i32 0, i32 5
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = load i32, i32* %6, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 4
  %110 = load i32, i32* @GFP_KERNEL, align 4
  %111 = call i32 @dma_alloc_coherent(i32* %99, i32 %102, i32* %109, i32 %110)
  %112 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %113 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %112, i32 0, i32 5
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = load i32, i32* %6, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 3
  store i32 %111, i32* %118, align 8
  %119 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %120 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %119, i32 0, i32 5
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = load i32, i32* %6, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %95
  %129 = load i32, i32* @ENOMEM, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %7, align 4
  br label %191

131:                                              ; preds = %95
  %132 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %133 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %136 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %135, i32 0, i32 5
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %136, align 8
  %138 = load i32, i32* %6, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  store i32 %134, i32* %141, align 8
  %142 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %143 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %142, i32 0, i32 5
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %143, align 8
  %145 = load i32, i32* %6, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 1
  store i32 1, i32* %148, align 4
  %149 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %150 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %149, i32 0, i32 5
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %150, align 8
  %152 = load i32, i32* %6, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 2
  store i64 0, i64* %155, align 8
  br label %156

156:                                              ; preds = %131
  %157 = load i32, i32* %6, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %6, align 4
  br label %89

159:                                              ; preds = %89
  %160 = load i32, i32* @SG_ENTRIES_IN_CMD, align 4
  %161 = add nsw i32 %160, 1
  %162 = sext i32 %161 to i64
  %163 = mul i64 %162, 4
  %164 = trunc i64 %163 to i32
  %165 = load i32, i32* @GFP_KERNEL, align 4
  %166 = call i32* @kmalloc(i32 %164, i32 %165)
  %167 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %168 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %167, i32 0, i32 4
  store i32* %166, i32** %168, align 8
  %169 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %170 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %169, i32 0, i32 4
  %171 = load i32*, i32** %170, align 8
  %172 = icmp ne i32* %171, null
  br i1 %172, label %176, label %173

173:                                              ; preds = %159
  %174 = load i32, i32* @ENOMEM, align 4
  %175 = sub nsw i32 0, %174
  store i32 %175, i32* %7, align 4
  br label %191

176:                                              ; preds = %159
  %177 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %178 = load i32, i32* %4, align 4
  %179 = call i32 @hpsa_enter_performant_mode(%struct.ctlr_info* %177, i32 %178)
  store i32 %179, i32* %7, align 4
  %180 = load i32, i32* %7, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %176
  br label %184

183:                                              ; preds = %176
  store i32 0, i32* %2, align 4
  br label %199

184:                                              ; preds = %182
  %185 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %186 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %185, i32 0, i32 4
  %187 = load i32*, i32** %186, align 8
  %188 = call i32 @kfree(i32* %187)
  %189 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %190 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %189, i32 0, i32 4
  store i32* null, i32** %190, align 8
  br label %191

191:                                              ; preds = %184, %173, %128
  %192 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %193 = call i32 @hpsa_free_reply_queues(%struct.ctlr_info* %192)
  %194 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %195 = call i32 @hpsa_free_ioaccel1_cmd_and_bft(%struct.ctlr_info* %194)
  %196 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %197 = call i32 @hpsa_free_ioaccel2_cmd_and_bft(%struct.ctlr_info* %196)
  %198 = load i32, i32* %7, align 4
  store i32 %198, i32* %2, align 4
  br label %199

199:                                              ; preds = %191, %183, %60, %41, %24, %13
  %200 = load i32, i32* %2, align 4
  ret i32 %200
}

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @hpsa_alloc_ioaccel1_cmd_and_bft(%struct.ctlr_info*) #1

declare dso_local i32 @hpsa_alloc_ioaccel2_cmd_and_bft(%struct.ctlr_info*) #1

declare dso_local i32 @hpsa_get_max_perf_mode_cmds(%struct.ctlr_info*) #1

declare dso_local i32 @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @hpsa_enter_performant_mode(%struct.ctlr_info*, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @hpsa_free_reply_queues(%struct.ctlr_info*) #1

declare dso_local i32 @hpsa_free_ioaccel1_cmd_and_bft(%struct.ctlr_info*) #1

declare dso_local i32 @hpsa_free_ioaccel2_cmd_and_bft(%struct.ctlr_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
