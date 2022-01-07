; ModuleID = '/home/carl/AnghaBench/linux/drivers/virt/vboxguest/extr_vboxguest_core.c_vbg_guest_mappings_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virt/vboxguest/extr_vboxguest_core.c_vbg_guest_mappings_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vbg_dev = type { %struct.page*, i8* }
%struct.page = type { i32 }
%struct.vmmdev_hypervisorinfo = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@GUEST_MAPPINGS_TRIES = common dso_local global i32 0, align 4
@VMMDEVREQ_GET_HYPERVISOR_INFO = common dso_local global i32 0, align 4
@VBG_KERNEL_REQUEST = common dso_local global i32 0, align 4
@SZ_4M = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_HIGHUSER = common dso_local global i32 0, align 4
@VM_MAP = common dso_local global i32 0, align 4
@PAGE_KERNEL_RO = common dso_local global i32 0, align 4
@VMMDEVREQ_SET_HYPERVISOR_INFO = common dso_local global i32 0, align 4
@VERR_INTERNAL_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vbg_dev*)* @vbg_guest_mappings_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vbg_guest_mappings_init(%struct.vbg_dev* %0) #0 {
  %2 = alloca %struct.vbg_dev*, align 8
  %3 = alloca %struct.vmmdev_hypervisorinfo*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.page**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.vbg_dev* %0, %struct.vbg_dev** %2, align 8
  %12 = load i32, i32* @GUEST_MAPPINGS_TRIES, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %4, align 8
  %15 = alloca i8*, i64 %13, align 16
  store i64 %13, i64* %5, align 8
  store %struct.page** null, %struct.page*** %6, align 8
  %16 = load i32, i32* @VMMDEVREQ_GET_HYPERVISOR_INFO, align 4
  %17 = load i32, i32* @VBG_KERNEL_REQUEST, align 4
  %18 = call %struct.vmmdev_hypervisorinfo* @vbg_req_alloc(i32 24, i32 %16, i32 %17)
  store %struct.vmmdev_hypervisorinfo* %18, %struct.vmmdev_hypervisorinfo** %3, align 8
  %19 = load %struct.vmmdev_hypervisorinfo*, %struct.vmmdev_hypervisorinfo** %3, align 8
  %20 = icmp ne %struct.vmmdev_hypervisorinfo* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  store i32 1, i32* %11, align 4
  br label %175

22:                                               ; preds = %1
  %23 = load %struct.vmmdev_hypervisorinfo*, %struct.vmmdev_hypervisorinfo** %3, align 8
  %24 = getelementptr inbounds %struct.vmmdev_hypervisorinfo, %struct.vmmdev_hypervisorinfo* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  %25 = load %struct.vmmdev_hypervisorinfo*, %struct.vmmdev_hypervisorinfo** %3, align 8
  %26 = getelementptr inbounds %struct.vmmdev_hypervisorinfo, %struct.vmmdev_hypervisorinfo* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = load %struct.vbg_dev*, %struct.vbg_dev** %2, align 8
  %28 = load %struct.vmmdev_hypervisorinfo*, %struct.vmmdev_hypervisorinfo** %3, align 8
  %29 = call i32 @vbg_req_perform(%struct.vbg_dev* %27, %struct.vmmdev_hypervisorinfo* %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  br label %170

33:                                               ; preds = %22
  %34 = load %struct.vmmdev_hypervisorinfo*, %struct.vmmdev_hypervisorinfo** %3, align 8
  %35 = getelementptr inbounds %struct.vmmdev_hypervisorinfo, %struct.vmmdev_hypervisorinfo* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %170

39:                                               ; preds = %33
  %40 = load %struct.vmmdev_hypervisorinfo*, %struct.vmmdev_hypervisorinfo** %3, align 8
  %41 = getelementptr inbounds %struct.vmmdev_hypervisorinfo, %struct.vmmdev_hypervisorinfo* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %8, align 4
  %44 = load %struct.vmmdev_hypervisorinfo*, %struct.vmmdev_hypervisorinfo** %3, align 8
  %45 = getelementptr inbounds %struct.vmmdev_hypervisorinfo, %struct.vmmdev_hypervisorinfo* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = trunc i64 %46 to i32
  %48 = call i32 @PAGE_ALIGN(i32 %47)
  %49 = load i32, i32* @SZ_4M, align 4
  %50 = add nsw i32 %48, %49
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @PAGE_SHIFT, align 4
  %53 = ashr i32 %51, %52
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call %struct.page** @kmalloc_array(i32 %53, i32 8, i32 %54)
  store %struct.page** %55, %struct.page*** %6, align 8
  %56 = load %struct.page**, %struct.page*** %6, align 8
  %57 = icmp ne %struct.page** %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %39
  br label %170

59:                                               ; preds = %39
  %60 = load i32, i32* @GFP_HIGHUSER, align 4
  %61 = call %struct.page* @alloc_page(i32 %60)
  %62 = load %struct.vbg_dev*, %struct.vbg_dev** %2, align 8
  %63 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %62, i32 0, i32 0
  store %struct.page* %61, %struct.page** %63, align 8
  %64 = load %struct.vbg_dev*, %struct.vbg_dev** %2, align 8
  %65 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %64, i32 0, i32 0
  %66 = load %struct.page*, %struct.page** %65, align 8
  %67 = icmp ne %struct.page* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %59
  br label %170

69:                                               ; preds = %59
  store i32 0, i32* %9, align 4
  br label %70

70:                                               ; preds = %84, %69
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @PAGE_SHIFT, align 4
  %74 = ashr i32 %72, %73
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %76, label %87

76:                                               ; preds = %70
  %77 = load %struct.vbg_dev*, %struct.vbg_dev** %2, align 8
  %78 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %77, i32 0, i32 0
  %79 = load %struct.page*, %struct.page** %78, align 8
  %80 = load %struct.page**, %struct.page*** %6, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.page*, %struct.page** %80, i64 %82
  store %struct.page* %79, %struct.page** %83, align 8
  br label %84

84:                                               ; preds = %76
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %9, align 4
  br label %70

87:                                               ; preds = %70
  store i32 0, i32* %9, align 4
  br label %88

88:                                               ; preds = %143, %87
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* @GUEST_MAPPINGS_TRIES, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %146

92:                                               ; preds = %88
  %93 = load %struct.page**, %struct.page*** %6, align 8
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* @PAGE_SHIFT, align 4
  %96 = ashr i32 %94, %95
  %97 = load i32, i32* @VM_MAP, align 4
  %98 = load i32, i32* @PAGE_KERNEL_RO, align 4
  %99 = call i8* @vmap(%struct.page** %93, i32 %96, i32 %97, i32 %98)
  %100 = load i32, i32* %9, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8*, i8** %15, i64 %101
  store i8* %99, i8** %102, align 8
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8*, i8** %15, i64 %104
  %106 = load i8*, i8** %105, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %109, label %108

108:                                              ; preds = %92
  br label %146

109:                                              ; preds = %92
  %110 = load i32, i32* @VMMDEVREQ_SET_HYPERVISOR_INFO, align 4
  %111 = load %struct.vmmdev_hypervisorinfo*, %struct.vmmdev_hypervisorinfo** %3, align 8
  %112 = getelementptr inbounds %struct.vmmdev_hypervisorinfo, %struct.vmmdev_hypervisorinfo* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  store i32 %110, i32* %113, align 4
  %114 = load i32, i32* @VERR_INTERNAL_ERROR, align 4
  %115 = load %struct.vmmdev_hypervisorinfo*, %struct.vmmdev_hypervisorinfo** %3, align 8
  %116 = getelementptr inbounds %struct.vmmdev_hypervisorinfo, %struct.vmmdev_hypervisorinfo* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  store i32 %114, i32* %117, align 8
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = load %struct.vmmdev_hypervisorinfo*, %struct.vmmdev_hypervisorinfo** %3, align 8
  %121 = getelementptr inbounds %struct.vmmdev_hypervisorinfo, %struct.vmmdev_hypervisorinfo* %120, i32 0, i32 1
  store i64 %119, i64* %121, align 8
  %122 = load i32, i32* %9, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8*, i8** %15, i64 %123
  %125 = load i8*, i8** %124, align 8
  %126 = load i32, i32* @SZ_4M, align 4
  %127 = call i64 @PTR_ALIGN(i8* %125, i32 %126)
  %128 = load %struct.vmmdev_hypervisorinfo*, %struct.vmmdev_hypervisorinfo** %3, align 8
  %129 = getelementptr inbounds %struct.vmmdev_hypervisorinfo, %struct.vmmdev_hypervisorinfo* %128, i32 0, i32 0
  store i64 %127, i64* %129, align 8
  %130 = load %struct.vbg_dev*, %struct.vbg_dev** %2, align 8
  %131 = load %struct.vmmdev_hypervisorinfo*, %struct.vmmdev_hypervisorinfo** %3, align 8
  %132 = call i32 @vbg_req_perform(%struct.vbg_dev* %130, %struct.vmmdev_hypervisorinfo* %131)
  store i32 %132, i32* %10, align 4
  %133 = load i32, i32* %10, align 4
  %134 = icmp sge i32 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %109
  %136 = load i32, i32* %9, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8*, i8** %15, i64 %137
  %139 = load i8*, i8** %138, align 8
  %140 = load %struct.vbg_dev*, %struct.vbg_dev** %2, align 8
  %141 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %140, i32 0, i32 1
  store i8* %139, i8** %141, align 8
  br label %146

142:                                              ; preds = %109
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %9, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %9, align 4
  br label %88

146:                                              ; preds = %135, %108, %88
  br label %147

147:                                              ; preds = %151, %146
  %148 = load i32, i32* %9, align 4
  %149 = add nsw i32 %148, -1
  store i32 %149, i32* %9, align 4
  %150 = icmp sge i32 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %147
  %152 = load i32, i32* %9, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8*, i8** %15, i64 %153
  %155 = load i8*, i8** %154, align 8
  %156 = call i32 @vunmap(i8* %155)
  br label %147

157:                                              ; preds = %147
  %158 = load %struct.vbg_dev*, %struct.vbg_dev** %2, align 8
  %159 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %158, i32 0, i32 1
  %160 = load i8*, i8** %159, align 8
  %161 = icmp ne i8* %160, null
  br i1 %161, label %169, label %162

162:                                              ; preds = %157
  %163 = load %struct.vbg_dev*, %struct.vbg_dev** %2, align 8
  %164 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %163, i32 0, i32 0
  %165 = load %struct.page*, %struct.page** %164, align 8
  %166 = call i32 @__free_page(%struct.page* %165)
  %167 = load %struct.vbg_dev*, %struct.vbg_dev** %2, align 8
  %168 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %167, i32 0, i32 0
  store %struct.page* null, %struct.page** %168, align 8
  br label %169

169:                                              ; preds = %162, %157
  br label %170

170:                                              ; preds = %169, %68, %58, %38, %32
  %171 = load %struct.vmmdev_hypervisorinfo*, %struct.vmmdev_hypervisorinfo** %3, align 8
  %172 = call i32 @vbg_req_free(%struct.vmmdev_hypervisorinfo* %171, i32 24)
  %173 = load %struct.page**, %struct.page*** %6, align 8
  %174 = call i32 @kfree(%struct.page** %173)
  store i32 0, i32* %11, align 4
  br label %175

175:                                              ; preds = %170, %21
  %176 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %176)
  %177 = load i32, i32* %11, align 4
  switch i32 %177, label %179 [
    i32 0, label %178
    i32 1, label %178
  ]

178:                                              ; preds = %175, %175
  ret void

179:                                              ; preds = %175
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.vmmdev_hypervisorinfo* @vbg_req_alloc(i32, i32, i32) #2

declare dso_local i32 @vbg_req_perform(%struct.vbg_dev*, %struct.vmmdev_hypervisorinfo*) #2

declare dso_local i32 @PAGE_ALIGN(i32) #2

declare dso_local %struct.page** @kmalloc_array(i32, i32, i32) #2

declare dso_local %struct.page* @alloc_page(i32) #2

declare dso_local i8* @vmap(%struct.page**, i32, i32, i32) #2

declare dso_local i64 @PTR_ALIGN(i8*, i32) #2

declare dso_local i32 @vunmap(i8*) #2

declare dso_local i32 @__free_page(%struct.page*) #2

declare dso_local i32 @vbg_req_free(%struct.vmmdev_hypervisorinfo*, i32) #2

declare dso_local i32 @kfree(%struct.page**) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
