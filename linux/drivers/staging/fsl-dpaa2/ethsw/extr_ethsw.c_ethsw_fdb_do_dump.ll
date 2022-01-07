; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fsl-dpaa2/ethsw/extr_ethsw.c_ethsw_fdb_do_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fsl-dpaa2/ethsw/extr_ethsw.c_ethsw_fdb_do_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdb_dump_entry = type { i32, i32 }
%struct.ethsw_dump_ctx = type { i64, i32, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64*, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.ndmsg = type { i32, i32, i64, i32, i64, i64, i32 }

@DPSW_FDB_ENTRY_DINAMIC = common dso_local global i32 0, align 4
@RTM_NEWNEIGH = common dso_local global i32 0, align 4
@NLM_F_MULTI = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@AF_BRIDGE = common dso_local global i32 0, align 4
@NTF_SELF = common dso_local global i32 0, align 4
@NUD_REACHABLE = common dso_local global i32 0, align 4
@NUD_NOARP = common dso_local global i32 0, align 4
@NDA_LLADDR = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fdb_dump_entry*, %struct.ethsw_dump_ctx*)* @ethsw_fdb_do_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ethsw_fdb_do_dump(%struct.fdb_dump_entry* %0, %struct.ethsw_dump_ctx* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fdb_dump_entry*, align 8
  %5 = alloca %struct.ethsw_dump_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nlmsghdr*, align 8
  %11 = alloca %struct.ndmsg*, align 8
  store %struct.fdb_dump_entry* %0, %struct.fdb_dump_entry** %4, align 8
  store %struct.ethsw_dump_ctx* %1, %struct.ethsw_dump_ctx** %5, align 8
  %12 = load %struct.fdb_dump_entry*, %struct.fdb_dump_entry** %4, align 8
  %13 = getelementptr inbounds %struct.fdb_dump_entry, %struct.fdb_dump_entry* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @DPSW_FDB_ENTRY_DINAMIC, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %6, align 4
  %17 = load %struct.ethsw_dump_ctx*, %struct.ethsw_dump_ctx** %5, align 8
  %18 = getelementptr inbounds %struct.ethsw_dump_ctx, %struct.ethsw_dump_ctx* %17, i32 0, i32 3
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @NETLINK_CB(i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %7, align 4
  %26 = load %struct.ethsw_dump_ctx*, %struct.ethsw_dump_ctx** %5, align 8
  %27 = getelementptr inbounds %struct.ethsw_dump_ctx, %struct.ethsw_dump_ctx* %26, i32 0, i32 3
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %9, align 4
  %33 = load %struct.ethsw_dump_ctx*, %struct.ethsw_dump_ctx** %5, align 8
  %34 = getelementptr inbounds %struct.ethsw_dump_ctx, %struct.ethsw_dump_ctx* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.ethsw_dump_ctx*, %struct.ethsw_dump_ctx** %5, align 8
  %37 = getelementptr inbounds %struct.ethsw_dump_ctx, %struct.ethsw_dump_ctx* %36, i32 0, i32 3
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp slt i64 %35, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %2
  br label %108

45:                                               ; preds = %2
  %46 = load %struct.ethsw_dump_ctx*, %struct.ethsw_dump_ctx** %5, align 8
  %47 = getelementptr inbounds %struct.ethsw_dump_ctx, %struct.ethsw_dump_ctx* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @RTM_NEWNEIGH, align 4
  %52 = load i32, i32* @NLM_F_MULTI, align 4
  %53 = call %struct.nlmsghdr* @nlmsg_put(i32 %48, i32 %49, i32 %50, i32 %51, i32 48, i32 %52)
  store %struct.nlmsghdr* %53, %struct.nlmsghdr** %10, align 8
  %54 = load %struct.nlmsghdr*, %struct.nlmsghdr** %10, align 8
  %55 = icmp ne %struct.nlmsghdr* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %45
  %57 = load i32, i32* @EMSGSIZE, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %121

59:                                               ; preds = %45
  %60 = load %struct.nlmsghdr*, %struct.nlmsghdr** %10, align 8
  %61 = call %struct.ndmsg* @nlmsg_data(%struct.nlmsghdr* %60)
  store %struct.ndmsg* %61, %struct.ndmsg** %11, align 8
  %62 = load i32, i32* @AF_BRIDGE, align 4
  %63 = load %struct.ndmsg*, %struct.ndmsg** %11, align 8
  %64 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %63, i32 0, i32 6
  store i32 %62, i32* %64, align 8
  %65 = load %struct.ndmsg*, %struct.ndmsg** %11, align 8
  %66 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %65, i32 0, i32 5
  store i64 0, i64* %66, align 8
  %67 = load %struct.ndmsg*, %struct.ndmsg** %11, align 8
  %68 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %67, i32 0, i32 4
  store i64 0, i64* %68, align 8
  %69 = load i32, i32* @NTF_SELF, align 4
  %70 = load %struct.ndmsg*, %struct.ndmsg** %11, align 8
  %71 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 8
  %72 = load %struct.ndmsg*, %struct.ndmsg** %11, align 8
  %73 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %72, i32 0, i32 2
  store i64 0, i64* %73, align 8
  %74 = load %struct.ethsw_dump_ctx*, %struct.ethsw_dump_ctx** %5, align 8
  %75 = getelementptr inbounds %struct.ethsw_dump_ctx, %struct.ethsw_dump_ctx* %74, i32 0, i32 2
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.ndmsg*, %struct.ndmsg** %11, align 8
  %80 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %59
  %84 = load i32, i32* @NUD_REACHABLE, align 4
  br label %87

85:                                               ; preds = %59
  %86 = load i32, i32* @NUD_NOARP, align 4
  br label %87

87:                                               ; preds = %85, %83
  %88 = phi i32 [ %84, %83 ], [ %86, %85 ]
  %89 = load %struct.ndmsg*, %struct.ndmsg** %11, align 8
  %90 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load %struct.ethsw_dump_ctx*, %struct.ethsw_dump_ctx** %5, align 8
  %92 = getelementptr inbounds %struct.ethsw_dump_ctx, %struct.ethsw_dump_ctx* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @NDA_LLADDR, align 4
  %95 = load i32, i32* @ETH_ALEN, align 4
  %96 = load %struct.fdb_dump_entry*, %struct.fdb_dump_entry** %4, align 8
  %97 = getelementptr inbounds %struct.fdb_dump_entry, %struct.fdb_dump_entry* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @nla_put(i32 %93, i32 %94, i32 %95, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %87
  br label %113

102:                                              ; preds = %87
  %103 = load %struct.ethsw_dump_ctx*, %struct.ethsw_dump_ctx** %5, align 8
  %104 = getelementptr inbounds %struct.ethsw_dump_ctx, %struct.ethsw_dump_ctx* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.nlmsghdr*, %struct.nlmsghdr** %10, align 8
  %107 = call i32 @nlmsg_end(i32 %105, %struct.nlmsghdr* %106)
  br label %108

108:                                              ; preds = %102, %44
  %109 = load %struct.ethsw_dump_ctx*, %struct.ethsw_dump_ctx** %5, align 8
  %110 = getelementptr inbounds %struct.ethsw_dump_ctx, %struct.ethsw_dump_ctx* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = add nsw i64 %111, 1
  store i64 %112, i64* %110, align 8
  store i32 0, i32* %3, align 4
  br label %121

113:                                              ; preds = %101
  %114 = load %struct.ethsw_dump_ctx*, %struct.ethsw_dump_ctx** %5, align 8
  %115 = getelementptr inbounds %struct.ethsw_dump_ctx, %struct.ethsw_dump_ctx* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.nlmsghdr*, %struct.nlmsghdr** %10, align 8
  %118 = call i32 @nlmsg_cancel(i32 %116, %struct.nlmsghdr* %117)
  %119 = load i32, i32* @EMSGSIZE, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %113, %108, %56
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i32 @NETLINK_CB(i32) #1

declare dso_local %struct.nlmsghdr* @nlmsg_put(i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.ndmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i64 @nla_put(i32, i32, i32, i32) #1

declare dso_local i32 @nlmsg_end(i32, %struct.nlmsghdr*) #1

declare dso_local i32 @nlmsg_cancel(i32, %struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
