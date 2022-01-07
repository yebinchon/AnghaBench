; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_vlclient.c_afs_vl_get_addrs_u.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_vlclient.c_afs_vl_get_addrs_u.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_addr_list = type { i32 }
%struct.afs_vl_cursor = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.afs_net* }
%struct.afs_net = type { i32 }
%struct.afs_ListAddrByAttributes__xdr = type { %struct.TYPE_4__, i64, i64, i64, i8* }
%struct.TYPE_4__ = type { i8**, i8*, i8*, i8*, i8*, i32 }
%struct.afs_uuid = type { i32*, i32, i32, i32, i32, i32 }
%struct.afs_call = type { i32*, i32, i32*, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@afs_RXVLGetAddrsU = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AFS_VL_MAX_LIFESPAN = common dso_local global i32 0, align 4
@VLGETADDRSU = common dso_local global i32 0, align 4
@AFS_VLADDR_UUID = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.afs_addr_list* @afs_vl_get_addrs_u(%struct.afs_vl_cursor* %0, i32* %1) #0 {
  %3 = alloca %struct.afs_addr_list*, align 8
  %4 = alloca %struct.afs_vl_cursor*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.afs_ListAddrByAttributes__xdr*, align 8
  %7 = alloca %struct.afs_uuid*, align 8
  %8 = alloca %struct.afs_call*, align 8
  %9 = alloca %struct.afs_net*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.afs_vl_cursor* %0, %struct.afs_vl_cursor** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = bitcast i32* %12 to %struct.afs_uuid*
  store %struct.afs_uuid* %13, %struct.afs_uuid** %7, align 8
  %14 = load %struct.afs_vl_cursor*, %struct.afs_vl_cursor** %4, align 8
  %15 = getelementptr inbounds %struct.afs_vl_cursor, %struct.afs_vl_cursor* %14, i32 0, i32 2
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.afs_net*, %struct.afs_net** %17, align 8
  store %struct.afs_net* %18, %struct.afs_net** %9, align 8
  %19 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.afs_net*, %struct.afs_net** %9, align 8
  %21 = call %struct.afs_call* @afs_alloc_flat_call(%struct.afs_net* %20, i32* @afs_RXVLGetAddrsU, i32 84, i32 16)
  store %struct.afs_call* %21, %struct.afs_call** %8, align 8
  %22 = load %struct.afs_call*, %struct.afs_call** %8, align 8
  %23 = icmp ne %struct.afs_call* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  %27 = call %struct.afs_addr_list* @ERR_PTR(i32 %26)
  store %struct.afs_addr_list* %27, %struct.afs_addr_list** %3, align 8
  br label %130

28:                                               ; preds = %2
  %29 = load %struct.afs_vl_cursor*, %struct.afs_vl_cursor** %4, align 8
  %30 = getelementptr inbounds %struct.afs_vl_cursor, %struct.afs_vl_cursor* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.afs_call*, %struct.afs_call** %8, align 8
  %33 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 8
  %34 = load %struct.afs_call*, %struct.afs_call** %8, align 8
  %35 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %34, i32 0, i32 2
  store i32* null, i32** %35, align 8
  %36 = load i32, i32* @AFS_VL_MAX_LIFESPAN, align 4
  %37 = load %struct.afs_call*, %struct.afs_call** %8, align 8
  %38 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  %39 = load %struct.afs_call*, %struct.afs_call** %8, align 8
  %40 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  store i32* %41, i32** %10, align 8
  %42 = load i32, i32* @VLGETADDRSU, align 4
  %43 = call i8* @htonl(i32 %42)
  %44 = ptrtoint i8* %43 to i32
  %45 = load i32*, i32** %10, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %10, align 8
  store i32 %44, i32* %45, align 4
  %47 = load i32*, i32** %10, align 8
  %48 = bitcast i32* %47 to %struct.afs_ListAddrByAttributes__xdr*
  store %struct.afs_ListAddrByAttributes__xdr* %48, %struct.afs_ListAddrByAttributes__xdr** %6, align 8
  %49 = load i32, i32* @AFS_VLADDR_UUID, align 4
  %50 = call i8* @htonl(i32 %49)
  %51 = load %struct.afs_ListAddrByAttributes__xdr*, %struct.afs_ListAddrByAttributes__xdr** %6, align 8
  %52 = getelementptr inbounds %struct.afs_ListAddrByAttributes__xdr, %struct.afs_ListAddrByAttributes__xdr* %51, i32 0, i32 4
  store i8* %50, i8** %52, align 8
  %53 = load %struct.afs_ListAddrByAttributes__xdr*, %struct.afs_ListAddrByAttributes__xdr** %6, align 8
  %54 = getelementptr inbounds %struct.afs_ListAddrByAttributes__xdr, %struct.afs_ListAddrByAttributes__xdr* %53, i32 0, i32 3
  store i64 0, i64* %54, align 8
  %55 = load %struct.afs_ListAddrByAttributes__xdr*, %struct.afs_ListAddrByAttributes__xdr** %6, align 8
  %56 = getelementptr inbounds %struct.afs_ListAddrByAttributes__xdr, %struct.afs_ListAddrByAttributes__xdr* %55, i32 0, i32 2
  store i64 0, i64* %56, align 8
  %57 = load %struct.afs_ListAddrByAttributes__xdr*, %struct.afs_ListAddrByAttributes__xdr** %6, align 8
  %58 = getelementptr inbounds %struct.afs_ListAddrByAttributes__xdr, %struct.afs_ListAddrByAttributes__xdr* %57, i32 0, i32 1
  store i64 0, i64* %58, align 8
  %59 = load %struct.afs_uuid*, %struct.afs_uuid** %7, align 8
  %60 = getelementptr inbounds %struct.afs_uuid, %struct.afs_uuid* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.afs_ListAddrByAttributes__xdr*, %struct.afs_ListAddrByAttributes__xdr** %6, align 8
  %63 = getelementptr inbounds %struct.afs_ListAddrByAttributes__xdr, %struct.afs_ListAddrByAttributes__xdr* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 5
  store i32 %61, i32* %64, align 8
  %65 = load %struct.afs_uuid*, %struct.afs_uuid** %7, align 8
  %66 = getelementptr inbounds %struct.afs_uuid, %struct.afs_uuid* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @ntohs(i32 %67)
  %69 = call i8* @htonl(i32 %68)
  %70 = load %struct.afs_ListAddrByAttributes__xdr*, %struct.afs_ListAddrByAttributes__xdr** %6, align 8
  %71 = getelementptr inbounds %struct.afs_ListAddrByAttributes__xdr, %struct.afs_ListAddrByAttributes__xdr* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 4
  store i8* %69, i8** %72, align 8
  %73 = load %struct.afs_uuid*, %struct.afs_uuid** %7, align 8
  %74 = getelementptr inbounds %struct.afs_uuid, %struct.afs_uuid* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @ntohs(i32 %75)
  %77 = call i8* @htonl(i32 %76)
  %78 = load %struct.afs_ListAddrByAttributes__xdr*, %struct.afs_ListAddrByAttributes__xdr** %6, align 8
  %79 = getelementptr inbounds %struct.afs_ListAddrByAttributes__xdr, %struct.afs_ListAddrByAttributes__xdr* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 3
  store i8* %77, i8** %80, align 8
  %81 = load %struct.afs_uuid*, %struct.afs_uuid** %7, align 8
  %82 = getelementptr inbounds %struct.afs_uuid, %struct.afs_uuid* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call i8* @htonl(i32 %83)
  %85 = load %struct.afs_ListAddrByAttributes__xdr*, %struct.afs_ListAddrByAttributes__xdr** %6, align 8
  %86 = getelementptr inbounds %struct.afs_ListAddrByAttributes__xdr, %struct.afs_ListAddrByAttributes__xdr* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 2
  store i8* %84, i8** %87, align 8
  %88 = load %struct.afs_uuid*, %struct.afs_uuid** %7, align 8
  %89 = getelementptr inbounds %struct.afs_uuid, %struct.afs_uuid* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i8* @htonl(i32 %90)
  %92 = load %struct.afs_ListAddrByAttributes__xdr*, %struct.afs_ListAddrByAttributes__xdr** %6, align 8
  %93 = getelementptr inbounds %struct.afs_ListAddrByAttributes__xdr, %struct.afs_ListAddrByAttributes__xdr* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  store i8* %91, i8** %94, align 8
  store i32 0, i32* %11, align 4
  br label %95

95:                                               ; preds = %114, %28
  %96 = load i32, i32* %11, align 4
  %97 = icmp slt i32 %96, 6
  br i1 %97, label %98, label %117

98:                                               ; preds = %95
  %99 = load %struct.afs_uuid*, %struct.afs_uuid** %7, align 8
  %100 = getelementptr inbounds %struct.afs_uuid, %struct.afs_uuid* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %11, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = call i8* @htonl(i32 %105)
  %107 = load %struct.afs_ListAddrByAttributes__xdr*, %struct.afs_ListAddrByAttributes__xdr** %6, align 8
  %108 = getelementptr inbounds %struct.afs_ListAddrByAttributes__xdr, %struct.afs_ListAddrByAttributes__xdr* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i8**, i8*** %109, align 8
  %111 = load i32, i32* %11, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8*, i8** %110, i64 %112
  store i8* %106, i8** %113, align 8
  br label %114

114:                                              ; preds = %98
  %115 = load i32, i32* %11, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %11, align 4
  br label %95

117:                                              ; preds = %95
  %118 = load %struct.afs_call*, %struct.afs_call** %8, align 8
  %119 = call i32 @trace_afs_make_vl_call(%struct.afs_call* %118)
  %120 = load %struct.afs_vl_cursor*, %struct.afs_vl_cursor** %4, align 8
  %121 = getelementptr inbounds %struct.afs_vl_cursor, %struct.afs_vl_cursor* %120, i32 0, i32 0
  %122 = load %struct.afs_call*, %struct.afs_call** %8, align 8
  %123 = load i32, i32* @GFP_KERNEL, align 4
  %124 = call i32 @afs_make_call(i32* %121, %struct.afs_call* %122, i32 %123)
  %125 = load %struct.afs_call*, %struct.afs_call** %8, align 8
  %126 = load %struct.afs_vl_cursor*, %struct.afs_vl_cursor** %4, align 8
  %127 = getelementptr inbounds %struct.afs_vl_cursor, %struct.afs_vl_cursor* %126, i32 0, i32 0
  %128 = call i64 @afs_wait_for_call_to_complete(%struct.afs_call* %125, i32* %127)
  %129 = inttoptr i64 %128 to %struct.afs_addr_list*
  store %struct.afs_addr_list* %129, %struct.afs_addr_list** %3, align 8
  br label %130

130:                                              ; preds = %117, %24
  %131 = load %struct.afs_addr_list*, %struct.afs_addr_list** %3, align 8
  ret %struct.afs_addr_list* %131
}

declare dso_local i32 @_enter(i8*) #1

declare dso_local %struct.afs_call* @afs_alloc_flat_call(%struct.afs_net*, i32*, i32, i32) #1

declare dso_local %struct.afs_addr_list* @ERR_PTR(i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @trace_afs_make_vl_call(%struct.afs_call*) #1

declare dso_local i32 @afs_make_call(i32*, %struct.afs_call*, i32) #1

declare dso_local i64 @afs_wait_for_call_to_complete(%struct.afs_call*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
