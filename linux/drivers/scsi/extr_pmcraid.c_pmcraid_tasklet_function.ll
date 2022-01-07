; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_pmcraid.c_pmcraid_tasklet_function.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_pmcraid.c_pmcraid_tasklet_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcraid_isr_param = type { i32, %struct.pmcraid_instance* }
%struct.pmcraid_instance = type { i32*, i32**, %struct.TYPE_2__*, i32, i32, %struct.pmcraid_cmd**, i32**, i32**, i32* }
%struct.TYPE_2__ = type { i32* }
%struct.pmcraid_cmd = type { i32 (%struct.pmcraid_cmd*)*, i32, i32 }

@HRRQ_TOGGLE_BIT = common dso_local global i32 0, align 4
@PMCRAID_MAX_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Invalid response handle %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @pmcraid_tasklet_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmcraid_tasklet_function(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.pmcraid_isr_param*, align 8
  %4 = alloca %struct.pmcraid_instance*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.pmcraid_cmd*, align 8
  store i64 %0, i64* %2, align 8
  %13 = load i64, i64* %2, align 8
  %14 = inttoptr i64 %13 to %struct.pmcraid_isr_param*
  store %struct.pmcraid_isr_param* %14, %struct.pmcraid_isr_param** %3, align 8
  %15 = load %struct.pmcraid_isr_param*, %struct.pmcraid_isr_param** %3, align 8
  %16 = getelementptr inbounds %struct.pmcraid_isr_param, %struct.pmcraid_isr_param* %15, i32 0, i32 1
  %17 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %16, align 8
  store %struct.pmcraid_instance* %17, %struct.pmcraid_instance** %4, align 8
  %18 = load %struct.pmcraid_isr_param*, %struct.pmcraid_isr_param** %3, align 8
  %19 = getelementptr inbounds %struct.pmcraid_isr_param, %struct.pmcraid_isr_param* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %9, align 4
  %21 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %4, align 8
  %22 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %21, i32 0, i32 8
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  store i32* %26, i32** %8, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = load i64, i64* %5, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %4, align 8
  %31 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %30, i32 0, i32 1
  %32 = load i32**, i32*** %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32*, i32** %32, i64 %34
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @le32_to_cpu(i32 %37)
  store i32 %38, i32* %10, align 4
  br label %39

39:                                               ; preds = %180, %104, %1
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @HRRQ_TOGGLE_BIT, align 4
  %42 = and i32 %40, %41
  %43 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %4, align 8
  %44 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %42, %49
  br i1 %50, label %51, label %193

51:                                               ; preds = %39
  %52 = load i32, i32* %10, align 4
  %53 = ashr i32 %52, 2
  store i32 %53, i32* %11, align 4
  store %struct.pmcraid_cmd* null, %struct.pmcraid_cmd** %12, align 8
  %54 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %4, align 8
  %55 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %54, i32 0, i32 1
  %56 = load i32**, i32*** %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32*, i32** %56, i64 %58
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %4, align 8
  %62 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %61, i32 0, i32 7
  %63 = load i32**, i32*** %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32*, i32** %63, i64 %65
  %67 = load i32*, i32** %66, align 8
  %68 = icmp ult i32* %60, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %51
  %70 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %4, align 8
  %71 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %70, i32 0, i32 1
  %72 = load i32**, i32*** %71, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32*, i32** %72, i64 %74
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i32 1
  store i32* %77, i32** %75, align 8
  br label %100

78:                                               ; preds = %51
  %79 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %4, align 8
  %80 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %79, i32 0, i32 6
  %81 = load i32**, i32*** %80, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32*, i32** %81, i64 %83
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %4, align 8
  %87 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %86, i32 0, i32 1
  %88 = load i32**, i32*** %87, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32*, i32** %88, i64 %90
  store i32* %85, i32** %91, align 8
  %92 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %4, align 8
  %93 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = xor i32 %98, 1
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %78, %69
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* @PMCRAID_MAX_CMD, align 4
  %103 = icmp sge i32 %101, %102
  br i1 %103, label %104, label %116

104:                                              ; preds = %100
  %105 = load i32, i32* %11, align 4
  %106 = call i32 @pmcraid_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %105)
  %107 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %4, align 8
  %108 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %107, i32 0, i32 1
  %109 = load i32**, i32*** %108, align 8
  %110 = load i32, i32* %9, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32*, i32** %109, i64 %111
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @le32_to_cpu(i32 %114)
  store i32 %115, i32* %10, align 4
  br label %39

116:                                              ; preds = %100
  %117 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %4, align 8
  %118 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %117, i32 0, i32 5
  %119 = load %struct.pmcraid_cmd**, %struct.pmcraid_cmd*** %118, align 8
  %120 = load i32, i32* %11, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %119, i64 %121
  %123 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %122, align 8
  store %struct.pmcraid_cmd* %123, %struct.pmcraid_cmd** %12, align 8
  %124 = load i32*, i32** %8, align 8
  %125 = load i64, i64* %5, align 8
  %126 = call i32 @spin_unlock_irqrestore(i32* %124, i64 %125)
  %127 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %4, align 8
  %128 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %127, i32 0, i32 4
  %129 = load i64, i64* %6, align 8
  %130 = call i32 @spin_lock_irqsave(i32* %128, i64 %129)
  %131 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %12, align 8
  %132 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %131, i32 0, i32 2
  %133 = call i32 @list_del(i32* %132)
  %134 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %4, align 8
  %135 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %134, i32 0, i32 4
  %136 = load i64, i64* %6, align 8
  %137 = call i32 @spin_unlock_irqrestore(i32* %135, i64 %136)
  %138 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %12, align 8
  %139 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %138, i32 0, i32 1
  %140 = call i32 @del_timer(i32* %139)
  %141 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %4, align 8
  %142 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %141, i32 0, i32 3
  %143 = call i32 @atomic_dec(i32* %142)
  %144 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %12, align 8
  %145 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %144, i32 0, i32 0
  %146 = load i32 (%struct.pmcraid_cmd*)*, i32 (%struct.pmcraid_cmd*)** %145, align 8
  %147 = icmp eq i32 (%struct.pmcraid_cmd*)* %146, @pmcraid_ioa_reset
  br i1 %147, label %148, label %168

148:                                              ; preds = %116
  %149 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %4, align 8
  %150 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %149, i32 0, i32 2
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = load i64, i64* %7, align 8
  %155 = call i32 @spin_lock_irqsave(i32* %153, i64 %154)
  %156 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %12, align 8
  %157 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %156, i32 0, i32 0
  %158 = load i32 (%struct.pmcraid_cmd*)*, i32 (%struct.pmcraid_cmd*)** %157, align 8
  %159 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %12, align 8
  %160 = call i32 %158(%struct.pmcraid_cmd* %159)
  %161 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %4, align 8
  %162 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %161, i32 0, i32 2
  %163 = load %struct.TYPE_2__*, %struct.TYPE_2__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = load i64, i64* %7, align 8
  %167 = call i32 @spin_unlock_irqrestore(i32* %165, i64 %166)
  br label %180

168:                                              ; preds = %116
  %169 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %12, align 8
  %170 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %169, i32 0, i32 0
  %171 = load i32 (%struct.pmcraid_cmd*)*, i32 (%struct.pmcraid_cmd*)** %170, align 8
  %172 = icmp ne i32 (%struct.pmcraid_cmd*)* %171, null
  br i1 %172, label %173, label %179

173:                                              ; preds = %168
  %174 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %12, align 8
  %175 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %174, i32 0, i32 0
  %176 = load i32 (%struct.pmcraid_cmd*)*, i32 (%struct.pmcraid_cmd*)** %175, align 8
  %177 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %12, align 8
  %178 = call i32 %176(%struct.pmcraid_cmd* %177)
  br label %179

179:                                              ; preds = %173, %168
  br label %180

180:                                              ; preds = %179, %148
  %181 = load i32*, i32** %8, align 8
  %182 = load i64, i64* %5, align 8
  %183 = call i32 @spin_lock_irqsave(i32* %181, i64 %182)
  %184 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %4, align 8
  %185 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %184, i32 0, i32 1
  %186 = load i32**, i32*** %185, align 8
  %187 = load i32, i32* %9, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32*, i32** %186, i64 %188
  %190 = load i32*, i32** %189, align 8
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @le32_to_cpu(i32 %191)
  store i32 %192, i32* %10, align 4
  br label %39

193:                                              ; preds = %39
  %194 = load i32*, i32** %8, align 8
  %195 = load i64, i64* %5, align 8
  %196 = call i32 @spin_unlock_irqrestore(i32* %194, i64 %195)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @pmcraid_err(i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @pmcraid_ioa_reset(%struct.pmcraid_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
