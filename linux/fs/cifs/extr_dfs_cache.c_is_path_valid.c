
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strchr (char const*,char) ;

__attribute__((used)) static inline bool is_path_valid(const char *path)
{
 return path && (strchr(path + 1, '\\') || strchr(path + 1, '/'));
}
