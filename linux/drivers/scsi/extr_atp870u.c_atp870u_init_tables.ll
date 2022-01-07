; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_atp870u.c_atp870u_init_tables.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_atp870u.c_atp870u_init_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.atp_unit = type { i32*, i32*, i32**, %struct.TYPE_4__**, i32***, i64*, i64*, i64*, i64*, i64*, i64*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32*, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"atp870u_init_tables fail\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@qcnt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*)* @atp870u_init_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atp870u_init_tables(%struct.Scsi_Host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.atp_unit*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %3, align 8
  %7 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %8 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %7, i32 0, i32 0
  %9 = bitcast i32* %8 to %struct.atp_unit*
  store %struct.atp_unit* %9, %struct.atp_unit** %4, align 8
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %222, %1
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 2
  br i1 %12, label %13, label %225

13:                                               ; preds = %10
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %122, %13
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 16
  br i1 %16, label %17, label %125

17:                                               ; preds = %14
  %18 = load %struct.atp_unit*, %struct.atp_unit** %4, align 8
  %19 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %18, i32 0, i32 11
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.atp_unit*, %struct.atp_unit** %4, align 8
  %23 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %22, i32 0, i32 3
  %24 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %24, i64 %26
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 3
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i32 @dma_alloc_coherent(i32* %21, i32 1024, i32* %32, i32 %33)
  %35 = load %struct.atp_unit*, %struct.atp_unit** %4, align 8
  %36 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %35, i32 0, i32 3
  %37 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %37, i64 %39
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 5
  store i32 %34, i32* %45, align 8
  %46 = load %struct.atp_unit*, %struct.atp_unit** %4, align 8
  %47 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %46, i32 0, i32 3
  %48 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %48, i64 %50
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %17
  %60 = call i32 @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %61 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %62 = call i32 @atp870u_free_tables(%struct.Scsi_Host* %61)
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %226

65:                                               ; preds = %17
  %66 = load %struct.atp_unit*, %struct.atp_unit** %4, align 8
  %67 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %66, i32 0, i32 3
  %68 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %68, i64 %70
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.atp_unit*, %struct.atp_unit** %4, align 8
  %79 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %78, i32 0, i32 3
  %80 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %79, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %80, i64 %82
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 4
  store i32 %77, i32* %88, align 4
  %89 = load %struct.atp_unit*, %struct.atp_unit** %4, align 8
  %90 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %89, i32 0, i32 3
  %91 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %90, align 8
  %92 = load i32, i32* %5, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %91, i64 %93
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  store i32 32, i32* %99, align 8
  %100 = load %struct.atp_unit*, %struct.atp_unit** %4, align 8
  %101 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %100, i32 0, i32 3
  %102 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %101, align 8
  %103 = load i32, i32* %5, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %102, i64 %104
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  store i32 127, i32* %110, align 4
  %111 = load %struct.atp_unit*, %struct.atp_unit** %4, align 8
  %112 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %111, i32 0, i32 3
  %113 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %112, align 8
  %114 = load i32, i32* %5, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %113, i64 %115
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = load i32, i32* %6, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 2
  store i32* null, i32** %121, align 8
  br label %122

122:                                              ; preds = %65
  %123 = load i32, i32* %6, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %6, align 4
  br label %14

125:                                              ; preds = %14
  %126 = load %struct.atp_unit*, %struct.atp_unit** %4, align 8
  %127 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %126, i32 0, i32 10
  %128 = load i64*, i64** %127, align 8
  %129 = load i32, i32* %5, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i64, i64* %128, i64 %130
  store i64 0, i64* %131, align 8
  %132 = load %struct.atp_unit*, %struct.atp_unit** %4, align 8
  %133 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %132, i32 0, i32 9
  %134 = load i64*, i64** %133, align 8
  %135 = load i32, i32* %5, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i64, i64* %134, i64 %136
  store i64 0, i64* %137, align 8
  %138 = load %struct.atp_unit*, %struct.atp_unit** %4, align 8
  %139 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %5, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  store i32 7, i32* %143, align 4
  %144 = load %struct.atp_unit*, %struct.atp_unit** %4, align 8
  %145 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %144, i32 0, i32 8
  %146 = load i64*, i64** %145, align 8
  %147 = load i32, i32* %5, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i64, i64* %146, i64 %148
  store i64 0, i64* %149, align 8
  %150 = load %struct.atp_unit*, %struct.atp_unit** %4, align 8
  %151 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %150, i32 0, i32 7
  %152 = load i64*, i64** %151, align 8
  %153 = load i32, i32* %5, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i64, i64* %152, i64 %154
  store i64 0, i64* %155, align 8
  %156 = load %struct.atp_unit*, %struct.atp_unit** %4, align 8
  %157 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %156, i32 0, i32 1
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %5, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  store i32 255, i32* %161, align 4
  %162 = load %struct.atp_unit*, %struct.atp_unit** %4, align 8
  %163 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %162, i32 0, i32 6
  %164 = load i64*, i64** %163, align 8
  %165 = load i32, i32* %5, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i64, i64* %164, i64 %166
  store i64 0, i64* %167, align 8
  %168 = load %struct.atp_unit*, %struct.atp_unit** %4, align 8
  %169 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %168, i32 0, i32 5
  %170 = load i64*, i64** %169, align 8
  %171 = load i32, i32* %5, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i64, i64* %170, i64 %172
  store i64 0, i64* %173, align 8
  store i32 0, i32* %6, align 4
  br label %174

174:                                              ; preds = %189, %125
  %175 = load i32, i32* %6, align 4
  %176 = load i32, i32* @qcnt, align 4
  %177 = icmp slt i32 %175, %176
  br i1 %177, label %178, label %192

178:                                              ; preds = %174
  %179 = load %struct.atp_unit*, %struct.atp_unit** %4, align 8
  %180 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %179, i32 0, i32 4
  %181 = load i32***, i32**** %180, align 8
  %182 = load i32, i32* %5, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32**, i32*** %181, i64 %183
  %185 = load i32**, i32*** %184, align 8
  %186 = load i32, i32* %6, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32*, i32** %185, i64 %187
  store i32* null, i32** %188, align 8
  br label %189

189:                                              ; preds = %178
  %190 = load i32, i32* %6, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %6, align 4
  br label %174

192:                                              ; preds = %174
  store i32 0, i32* %6, align 4
  br label %193

193:                                              ; preds = %218, %192
  %194 = load i32, i32* %6, align 4
  %195 = icmp slt i32 %194, 16
  br i1 %195, label %196, label %221

196:                                              ; preds = %193
  %197 = load %struct.atp_unit*, %struct.atp_unit** %4, align 8
  %198 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %197, i32 0, i32 3
  %199 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %198, align 8
  %200 = load i32, i32* %5, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %199, i64 %201
  %203 = load %struct.TYPE_4__*, %struct.TYPE_4__** %202, align 8
  %204 = load i32, i32* %6, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 2
  store i32* null, i32** %207, align 8
  %208 = load %struct.atp_unit*, %struct.atp_unit** %4, align 8
  %209 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %208, i32 0, i32 2
  %210 = load i32**, i32*** %209, align 8
  %211 = load i32, i32* %5, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32*, i32** %210, i64 %212
  %214 = load i32*, i32** %213, align 8
  %215 = load i32, i32* %6, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %214, i64 %216
  store i32 4, i32* %217, align 4
  br label %218

218:                                              ; preds = %196
  %219 = load i32, i32* %6, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %6, align 4
  br label %193

221:                                              ; preds = %193
  br label %222

222:                                              ; preds = %221
  %223 = load i32, i32* %5, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %5, align 4
  br label %10

225:                                              ; preds = %10
  store i32 0, i32* %2, align 4
  br label %226

226:                                              ; preds = %225, %59
  %227 = load i32, i32* %2, align 4
  ret i32 %227
}

declare dso_local i32 @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @atp870u_free_tables(%struct.Scsi_Host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
