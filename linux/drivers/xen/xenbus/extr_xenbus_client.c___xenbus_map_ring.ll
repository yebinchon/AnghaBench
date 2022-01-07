; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/xenbus/extr_xenbus_client.c___xenbus_map_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/xenbus/extr_xenbus_client.c___xenbus_map_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbus_device = type { i32 }
%struct.gnttab_map_grant_ref = type { i32, i64 }
%struct.gnttab_unmap_grant_ref = type { i32, i64 }

@XENBUS_MAX_RING_GRANTS = common dso_local global i32 0, align 4
@GNTST_okay = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@INVALID_GRANT_HANDLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"mapping in shared page %d from domain %d\00", align 1
@GNTMAP_host_map = common dso_local global i32 0, align 4
@GNTTABOP_unmap_grant_ref = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xenbus_device*, i32*, i32, i64*, i64*, i32, i32*)* @__xenbus_map_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__xenbus_map_ring(%struct.xenbus_device* %0, i32* %1, i32 %2, i64* %3, i64* %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.xenbus_device*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.xenbus_device* %0, %struct.xenbus_device** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i64* %3, i64** %12, align 8
  store i64* %4, i64** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %23 = load i32, i32* @XENBUS_MAX_RING_GRANTS, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %16, align 8
  %26 = alloca %struct.gnttab_map_grant_ref, i64 %24, align 16
  store i64 %24, i64* %17, align 8
  %27 = load i32, i32* @XENBUS_MAX_RING_GRANTS, align 4
  %28 = zext i32 %27 to i64
  %29 = alloca %struct.gnttab_unmap_grant_ref, i64 %28, align 16
  store i64 %28, i64* %18, align 8
  %30 = load i32, i32* @GNTST_okay, align 4
  store i32 %30, i32* %21, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @XENBUS_MAX_RING_GRANTS, align 4
  %33 = icmp ugt i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %7
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %8, align 4
  store i32 1, i32* %22, align 4
  br label %196

37:                                               ; preds = %7
  store i32 0, i32* %19, align 4
  br label %38

38:                                               ; preds = %72, %37
  %39 = load i32, i32* %19, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %75

42:                                               ; preds = %38
  %43 = load i32, i32* %19, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %26, i64 %44
  %46 = bitcast %struct.gnttab_map_grant_ref* %45 to %struct.gnttab_unmap_grant_ref*
  %47 = call i32 @memset(%struct.gnttab_unmap_grant_ref* %46, i32 0, i32 16)
  %48 = load i32, i32* %19, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %26, i64 %49
  %51 = bitcast %struct.gnttab_map_grant_ref* %50 to %struct.gnttab_unmap_grant_ref*
  %52 = load i64*, i64** %13, align 8
  %53 = load i32, i32* %19, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* %14, align 4
  %58 = load i32*, i32** %10, align 8
  %59 = load i32, i32* %19, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.xenbus_device*, %struct.xenbus_device** %9, align 8
  %64 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @gnttab_set_map_op(%struct.gnttab_unmap_grant_ref* %51, i64 %56, i32 %57, i32 %62, i32 %65)
  %67 = load i64, i64* @INVALID_GRANT_HANDLE, align 8
  %68 = load i64*, i64** %12, align 8
  %69 = load i32, i32* %19, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  store i64 %67, i64* %71, align 8
  br label %72

72:                                               ; preds = %42
  %73 = load i32, i32* %19, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %19, align 4
  br label %38

75:                                               ; preds = %38
  %76 = bitcast %struct.gnttab_map_grant_ref* %26 to %struct.gnttab_unmap_grant_ref*
  %77 = load i32, i32* %19, align 4
  %78 = call i32 @gnttab_batch_map(%struct.gnttab_unmap_grant_ref* %76, i32 %77)
  store i32 0, i32* %19, align 4
  br label %79

79:                                               ; preds = %123, %75
  %80 = load i32, i32* %19, align 4
  %81 = load i32, i32* %11, align 4
  %82 = icmp ult i32 %80, %81
  br i1 %82, label %83, label %126

83:                                               ; preds = %79
  %84 = load i32, i32* %19, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %26, i64 %85
  %87 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 16
  %89 = load i32, i32* @GNTST_okay, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %112

91:                                               ; preds = %83
  %92 = load i32, i32* %19, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %26, i64 %93
  %95 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 16
  store i32 %96, i32* %21, align 4
  %97 = load %struct.xenbus_device*, %struct.xenbus_device** %9, align 8
  %98 = load i32, i32* %19, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %26, i64 %99
  %101 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 16
  %103 = load i32*, i32** %10, align 8
  %104 = load i32, i32* %19, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.xenbus_device*, %struct.xenbus_device** %9, align 8
  %109 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @xenbus_dev_fatal(%struct.xenbus_device* %97, i32 %102, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %107, i32 %110)
  br label %128

112:                                              ; preds = %83
  %113 = load i32, i32* %19, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %26, i64 %114
  %116 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load i64*, i64** %12, align 8
  %119 = load i32, i32* %19, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i64, i64* %118, i64 %120
  store i64 %117, i64* %121, align 8
  br label %122

122:                                              ; preds = %112
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %19, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %19, align 4
  br label %79

126:                                              ; preds = %79
  %127 = load i32, i32* @GNTST_okay, align 4
  store i32 %127, i32* %8, align 4
  store i32 1, i32* %22, align 4
  br label %196

128:                                              ; preds = %91
  store i32 0, i32* %20, align 4
  store i32 0, i32* %19, align 4
  br label %129

129:                                              ; preds = %164, %128
  %130 = load i32, i32* %19, align 4
  %131 = load i32, i32* %11, align 4
  %132 = icmp ult i32 %130, %131
  br i1 %132, label %133, label %167

133:                                              ; preds = %129
  %134 = load i64*, i64** %12, align 8
  %135 = load i32, i32* %19, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i64, i64* %134, i64 %136
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @INVALID_GRANT_HANDLE, align 8
  %140 = icmp ne i64 %138, %139
  br i1 %140, label %141, label %163

141:                                              ; preds = %133
  %142 = load i32, i32* %20, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %29, i64 %143
  %145 = call i32 @memset(%struct.gnttab_unmap_grant_ref* %144, i32 0, i32 16)
  %146 = load i32, i32* %20, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %29, i64 %147
  %149 = load i64*, i64** %13, align 8
  %150 = load i32, i32* %19, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i64, i64* %149, i64 %151
  %153 = load i64, i64* %152, align 8
  %154 = load i32, i32* @GNTMAP_host_map, align 4
  %155 = load i64*, i64** %12, align 8
  %156 = load i32, i32* %19, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i64, i64* %155, i64 %157
  %159 = load i64, i64* %158, align 8
  %160 = call i32 @gnttab_set_unmap_op(%struct.gnttab_unmap_grant_ref* %148, i64 %153, i32 %154, i64 %159)
  %161 = load i32, i32* %20, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %20, align 4
  br label %163

163:                                              ; preds = %141, %133
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %19, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %19, align 4
  br label %129

167:                                              ; preds = %129
  %168 = load i32, i32* @GNTTABOP_unmap_grant_ref, align 4
  %169 = load i32, i32* %20, align 4
  %170 = call i64 @HYPERVISOR_grant_table_op(i32 %168, %struct.gnttab_unmap_grant_ref* %29, i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %167
  %173 = call i32 (...) @BUG()
  br label %174

174:                                              ; preds = %172, %167
  %175 = load i32*, i32** %15, align 8
  store i32 0, i32* %175, align 4
  store i32 0, i32* %19, align 4
  br label %176

176:                                              ; preds = %191, %174
  %177 = load i32, i32* %19, align 4
  %178 = load i32, i32* %20, align 4
  %179 = icmp slt i32 %177, %178
  br i1 %179, label %180, label %194

180:                                              ; preds = %176
  %181 = load i32, i32* %19, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %29, i64 %182
  %184 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 16
  %186 = load i32, i32* @GNTST_okay, align 4
  %187 = icmp ne i32 %185, %186
  br i1 %187, label %188, label %190

188:                                              ; preds = %180
  %189 = load i32*, i32** %15, align 8
  store i32 1, i32* %189, align 4
  br label %194

190:                                              ; preds = %180
  br label %191

191:                                              ; preds = %190
  %192 = load i32, i32* %19, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %19, align 4
  br label %176

194:                                              ; preds = %188, %176
  %195 = load i32, i32* %21, align 4
  store i32 %195, i32* %8, align 4
  store i32 1, i32* %22, align 4
  br label %196

196:                                              ; preds = %194, %126, %34
  %197 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %197)
  %198 = load i32, i32* %8, align 4
  ret i32 %198
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.gnttab_unmap_grant_ref*, i32, i32) #2

declare dso_local i32 @gnttab_set_map_op(%struct.gnttab_unmap_grant_ref*, i64, i32, i32, i32) #2

declare dso_local i32 @gnttab_batch_map(%struct.gnttab_unmap_grant_ref*, i32) #2

declare dso_local i32 @xenbus_dev_fatal(%struct.xenbus_device*, i32, i8*, i32, i32) #2

declare dso_local i32 @gnttab_set_unmap_op(%struct.gnttab_unmap_grant_ref*, i64, i32, i64) #2

declare dso_local i64 @HYPERVISOR_grant_table_op(i32, %struct.gnttab_unmap_grant_ref*, i32) #2

declare dso_local i32 @BUG(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
