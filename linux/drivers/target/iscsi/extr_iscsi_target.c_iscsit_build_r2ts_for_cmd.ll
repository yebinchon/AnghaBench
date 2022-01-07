; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_build_r2ts_for_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_build_r2ts_for_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32, i64 }
%struct.iscsi_cmd = type { i32, i32, i64, i32, i64, i64, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.iscsi_seq = type { i32, i32 }

@ICF_SENT_LAST_R2T = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsit_build_r2ts_for_cmd(%struct.iscsi_conn* %0, %struct.iscsi_cmd* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iscsi_conn*, align 8
  %6 = alloca %struct.iscsi_cmd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.iscsi_seq*, align 8
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %5, align 8
  store %struct.iscsi_cmd* %1, %struct.iscsi_cmd** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %15 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %14, i32 0, i32 6
  %16 = call i32 @spin_lock_bh(i32* %15)
  %17 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %18 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @ICF_SENT_LAST_R2T, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %3
  %24 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %25 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %24, i32 0, i32 6
  %26 = call i32 @spin_unlock_bh(i32* %25)
  store i32 0, i32* %4, align 4
  br label %240

27:                                               ; preds = %3
  %28 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %29 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %27
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %36
  %40 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %41 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %44 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %43, i32 0, i32 8
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @max(i32 %42, i32 %45)
  %47 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %48 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %39, %36, %27
  br label %50

50:                                               ; preds = %235, %49
  %51 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %52 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %55 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %54, i32 0, i32 0
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp slt i64 %53, %60
  br i1 %61, label %62, label %236

62:                                               ; preds = %50
  %63 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %64 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %63, i32 0, i32 0
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %183

71:                                               ; preds = %62
  %72 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %73 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %120

77:                                               ; preds = %71
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %120

80:                                               ; preds = %77
  %81 = load i32, i32* %9, align 4
  %82 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %83 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %82, i32 0, i32 0
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %81, %88
  %90 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %91 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = sub nsw i32 %89, %92
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* %11, align 4
  %95 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %96 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %95, i32 0, i32 7
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp sgt i32 %94, %98
  br i1 %99, label %100, label %107

100:                                              ; preds = %80
  %101 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %102 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %101, i32 0, i32 7
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %9, align 4
  %106 = sub nsw i32 %104, %105
  store i32 %106, i32* %10, align 4
  br label %119

107:                                              ; preds = %80
  %108 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %109 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %108, i32 0, i32 0
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %116 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = sub nsw i32 %114, %117
  store i32 %118, i32* %10, align 4
  br label %119

119:                                              ; preds = %107, %100
  br label %152

120:                                              ; preds = %77, %71
  %121 = load i32, i32* %9, align 4
  %122 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %123 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %122, i32 0, i32 0
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = add nsw i32 %121, %128
  store i32 %129, i32* %12, align 4
  %130 = load i32, i32* %12, align 4
  %131 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %132 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %131, i32 0, i32 7
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = icmp sgt i32 %130, %134
  br i1 %135, label %136, label %143

136:                                              ; preds = %120
  %137 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %138 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %137, i32 0, i32 7
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %9, align 4
  %142 = sub nsw i32 %140, %141
  store i32 %142, i32* %10, align 4
  br label %151

143:                                              ; preds = %120
  %144 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %145 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %144, i32 0, i32 0
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  store i32 %150, i32* %10, align 4
  br label %151

151:                                              ; preds = %143, %136
  br label %152

152:                                              ; preds = %151, %119
  %153 = load i32, i32* %10, align 4
  %154 = sext i32 %153 to i64
  %155 = icmp slt i64 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %152
  %157 = load i32, i32* @ICF_SENT_LAST_R2T, align 4
  %158 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %159 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = or i32 %160, %157
  store i32 %161, i32* %159, align 8
  br label %236

162:                                              ; preds = %152
  %163 = load i32, i32* %10, align 4
  %164 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %165 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = add nsw i32 %166, %163
  store i32 %167, i32* %165, align 4
  %168 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %169 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %172 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %171, i32 0, i32 7
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = icmp eq i32 %170, %174
  br i1 %175, label %176, label %182

176:                                              ; preds = %162
  %177 = load i32, i32* @ICF_SENT_LAST_R2T, align 4
  %178 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %179 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = or i32 %180, %177
  store i32 %181, i32* %179, align 8
  br label %182

182:                                              ; preds = %176, %162
  br label %213

183:                                              ; preds = %62
  %184 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %185 = call %struct.iscsi_seq* @iscsit_get_seq_holder_for_r2t(%struct.iscsi_cmd* %184)
  store %struct.iscsi_seq* %185, %struct.iscsi_seq** %13, align 8
  %186 = load %struct.iscsi_seq*, %struct.iscsi_seq** %13, align 8
  %187 = icmp ne %struct.iscsi_seq* %186, null
  br i1 %187, label %192, label %188

188:                                              ; preds = %183
  %189 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %190 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %189, i32 0, i32 6
  %191 = call i32 @spin_unlock_bh(i32* %190)
  store i32 -1, i32* %4, align 4
  br label %240

192:                                              ; preds = %183
  %193 = load %struct.iscsi_seq*, %struct.iscsi_seq** %13, align 8
  %194 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  store i32 %195, i32* %9, align 4
  %196 = load %struct.iscsi_seq*, %struct.iscsi_seq** %13, align 8
  %197 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  store i32 %198, i32* %10, align 4
  %199 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %200 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %199, i32 0, i32 4
  %201 = load i64, i64* %200, align 8
  %202 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %203 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %202, i32 0, i32 5
  %204 = load i64, i64* %203, align 8
  %205 = icmp eq i64 %201, %204
  br i1 %205, label %206, label %212

206:                                              ; preds = %192
  %207 = load i32, i32* @ICF_SENT_LAST_R2T, align 4
  %208 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %209 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = or i32 %210, %207
  store i32 %211, i32* %209, align 8
  br label %212

212:                                              ; preds = %206, %192
  br label %213

213:                                              ; preds = %212, %182
  %214 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %215 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %214, i32 0, i32 2
  %216 = load i64, i64* %215, align 8
  %217 = add nsw i64 %216, 1
  store i64 %217, i64* %215, align 8
  store i32 0, i32* %8, align 4
  %218 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %219 = load i32, i32* %9, align 4
  %220 = load i32, i32* %10, align 4
  %221 = call i64 @iscsit_add_r2t_to_list(%struct.iscsi_cmd* %218, i32 %219, i32 %220, i32 0, i32 0)
  %222 = icmp slt i64 %221, 0
  br i1 %222, label %223, label %227

223:                                              ; preds = %213
  %224 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %225 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %224, i32 0, i32 6
  %226 = call i32 @spin_unlock_bh(i32* %225)
  store i32 -1, i32* %4, align 4
  br label %240

227:                                              ; preds = %213
  %228 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %229 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* @ICF_SENT_LAST_R2T, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %235

234:                                              ; preds = %227
  br label %236

235:                                              ; preds = %227
  br label %50

236:                                              ; preds = %234, %156, %50
  %237 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %238 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %237, i32 0, i32 6
  %239 = call i32 @spin_unlock_bh(i32* %238)
  store i32 0, i32* %4, align 4
  br label %240

240:                                              ; preds = %236, %223, %188, %23
  %241 = load i32, i32* %4, align 4
  ret i32 %241
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local %struct.iscsi_seq* @iscsit_get_seq_holder_for_r2t(%struct.iscsi_cmd*) #1

declare dso_local i64 @iscsit_add_r2t_to_list(%struct.iscsi_cmd*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
