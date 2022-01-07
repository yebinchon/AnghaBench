; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_vl_list.c_afs_extract_vl_addrs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_vl_list.c_afs_extract_vl_addrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_addr_list = type { i64, i64, i64 }
%struct.dns_server_list_v1_address = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@VL_SERVICE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c" = -EINVAL [short inet]\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c" = -EINVAL [short inet6]\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c" = -EADDRNOTAVAIL [unknown af %u]\00", align 1
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.afs_addr_list* (i32**, i32*, i32, i32)* @afs_extract_vl_addrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.afs_addr_list* @afs_extract_vl_addrs(i32** %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.afs_addr_list*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.afs_addr_list*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.dns_server_list_v1_address, align 4
  %14 = alloca [4 x i32], align 16
  store i32** %0, i32*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32**, i32*** %6, align 8
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %11, align 8
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @VL_SERVICE, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call %struct.afs_addr_list* @afs_alloc_addrlist(i32 %19, i32 %20, i32 %21)
  store %struct.afs_addr_list* %22, %struct.afs_addr_list** %10, align 8
  %23 = load %struct.afs_addr_list*, %struct.afs_addr_list** %10, align 8
  %24 = icmp ne %struct.afs_addr_list* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  %28 = call %struct.afs_addr_list* @ERR_PTR(i32 %27)
  store %struct.afs_addr_list* %28, %struct.afs_addr_list** %5, align 8
  br label %133

29:                                               ; preds = %4
  %30 = load i32, i32* %8, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load %struct.afs_addr_list*, %struct.afs_addr_list** %10, align 8
  store %struct.afs_addr_list* %33, %struct.afs_addr_list** %5, align 8
  br label %133

34:                                               ; preds = %29
  br label %35

35:                                               ; preds = %105, %34
  %36 = load i32, i32* %8, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %35
  %39 = load i32*, i32** %7, align 8
  %40 = load i32*, i32** %11, align 8
  %41 = ptrtoint i32* %39 to i64
  %42 = ptrtoint i32* %40 to i64
  %43 = sub i64 %41, %42
  %44 = sdiv exact i64 %43, 4
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = icmp sge i64 %44, %46
  br label %48

48:                                               ; preds = %38, %35
  %49 = phi i1 [ false, %35 ], [ %47, %38 ]
  br i1 %49, label %50, label %108

50:                                               ; preds = %48
  %51 = load i32*, i32** %11, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %11, align 8
  %53 = load i32, i32* %51, align 4
  %54 = getelementptr inbounds %struct.dns_server_list_v1_address, %struct.dns_server_list_v1_address* %13, i32 0, i32 0
  store i32 %53, i32* %54, align 4
  %55 = getelementptr inbounds %struct.dns_server_list_v1_address, %struct.dns_server_list_v1_address* %13, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  switch i32 %56, label %98 [
    i32 129, label %57
    i32 128, label %78
  ]

57:                                               ; preds = %50
  %58 = load i32*, i32** %7, align 8
  %59 = load i32*, i32** %11, align 8
  %60 = ptrtoint i32* %58 to i64
  %61 = ptrtoint i32* %59 to i64
  %62 = sub i64 %60, %61
  %63 = sdiv exact i64 %62, 4
  %64 = icmp slt i64 %63, 4
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %126

67:                                               ; preds = %57
  %68 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %69 = load i32*, i32** %11, align 8
  %70 = call i32 @memcpy(i32* %68, i32* %69, i32 4)
  %71 = load %struct.afs_addr_list*, %struct.afs_addr_list** %10, align 8
  %72 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %73 = load i32, i32* %72, align 16
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @afs_merge_fs_addr4(%struct.afs_addr_list* %71, i32 %73, i32 %74)
  %76 = load i32*, i32** %11, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 4
  store i32* %77, i32** %11, align 8
  br label %104

78:                                               ; preds = %50
  %79 = load i32*, i32** %7, align 8
  %80 = load i32*, i32** %11, align 8
  %81 = ptrtoint i32* %79 to i64
  %82 = ptrtoint i32* %80 to i64
  %83 = sub i64 %81, %82
  %84 = sdiv exact i64 %83, 4
  %85 = icmp slt i64 %84, 16
  br i1 %85, label %86, label %88

86:                                               ; preds = %78
  %87 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %126

88:                                               ; preds = %78
  %89 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %90 = load i32*, i32** %11, align 8
  %91 = call i32 @memcpy(i32* %89, i32* %90, i32 16)
  %92 = load %struct.afs_addr_list*, %struct.afs_addr_list** %10, align 8
  %93 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @afs_merge_fs_addr6(%struct.afs_addr_list* %92, i32* %93, i32 %94)
  %96 = load i32*, i32** %11, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 16
  store i32* %97, i32** %11, align 8
  br label %104

98:                                               ; preds = %50
  %99 = getelementptr inbounds %struct.dns_server_list_v1_address, %struct.dns_server_list_v1_address* %13, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* @EADDRNOTAVAIL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %12, align 4
  br label %126

104:                                              ; preds = %88, %67
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %8, align 4
  %107 = add nsw i32 %106, -1
  store i32 %107, i32* %8, align 4
  br label %35

108:                                              ; preds = %48
  %109 = load %struct.afs_addr_list*, %struct.afs_addr_list** %10, align 8
  %110 = getelementptr inbounds %struct.afs_addr_list, %struct.afs_addr_list* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.afs_addr_list*, %struct.afs_addr_list** %10, align 8
  %113 = getelementptr inbounds %struct.afs_addr_list, %struct.afs_addr_list* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp slt i64 %111, %114
  br i1 %115, label %116, label %122

116:                                              ; preds = %108
  %117 = load %struct.afs_addr_list*, %struct.afs_addr_list** %10, align 8
  %118 = getelementptr inbounds %struct.afs_addr_list, %struct.afs_addr_list* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.afs_addr_list*, %struct.afs_addr_list** %10, align 8
  %121 = getelementptr inbounds %struct.afs_addr_list, %struct.afs_addr_list* %120, i32 0, i32 2
  store i64 %119, i64* %121, align 8
  br label %122

122:                                              ; preds = %116, %108
  %123 = load i32*, i32** %11, align 8
  %124 = load i32**, i32*** %6, align 8
  store i32* %123, i32** %124, align 8
  %125 = load %struct.afs_addr_list*, %struct.afs_addr_list** %10, align 8
  store %struct.afs_addr_list* %125, %struct.afs_addr_list** %5, align 8
  br label %133

126:                                              ; preds = %98, %86, %65
  %127 = load i32*, i32** %11, align 8
  %128 = load i32**, i32*** %6, align 8
  store i32* %127, i32** %128, align 8
  %129 = load %struct.afs_addr_list*, %struct.afs_addr_list** %10, align 8
  %130 = call i32 @afs_put_addrlist(%struct.afs_addr_list* %129)
  %131 = load i32, i32* %12, align 4
  %132 = call %struct.afs_addr_list* @ERR_PTR(i32 %131)
  store %struct.afs_addr_list* %132, %struct.afs_addr_list** %5, align 8
  br label %133

133:                                              ; preds = %126, %122, %32, %25
  %134 = load %struct.afs_addr_list*, %struct.afs_addr_list** %5, align 8
  ret %struct.afs_addr_list* %134
}

declare dso_local %struct.afs_addr_list* @afs_alloc_addrlist(i32, i32, i32) #1

declare dso_local %struct.afs_addr_list* @ERR_PTR(i32) #1

declare dso_local i32 @_leave(i8*, ...) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @afs_merge_fs_addr4(%struct.afs_addr_list*, i32, i32) #1

declare dso_local i32 @afs_merge_fs_addr6(%struct.afs_addr_list*, i32*, i32) #1

declare dso_local i32 @afs_put_addrlist(%struct.afs_addr_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
